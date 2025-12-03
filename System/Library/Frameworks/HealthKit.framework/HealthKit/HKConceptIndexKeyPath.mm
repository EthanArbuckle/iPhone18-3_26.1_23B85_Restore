@interface HKConceptIndexKeyPath
+ (id)conceptIndexKeyPathWithFullKeyPath:(id)path error:(id *)error;
- (HKConceptIndexKeyPath)init;
- (HKConceptIndexKeyPath)initWithFullKeyPath:(id)path range:(_NSRange)range;
- (_NSRange)range;
- (id)head;
- (id)tail;
@end

@implementation HKConceptIndexKeyPath

- (HKConceptIndexKeyPath)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)conceptIndexKeyPathWithFullKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    [HKConceptIndexKeyPath conceptIndexKeyPathWithFullKeyPath:a2 error:self];
  }

  if (![pathCopy length])
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = @"Key Path is an empty string. Please provide a key path with at least length 1";
    goto LABEL_7;
  }

  v8 = [pathCopy rangeOfString:@"."];
  v10 = v9;
  if ([pathCopy length] == v8 + 1)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = @"Key Path ends in a period and is invalid.";
LABEL_7:
    [v11 hk_assignError:error code:3 format:v12];
    v13 = 0;
    goto LABEL_9;
  }

  v13 = [[self alloc] initWithFullKeyPath:pathCopy range:{v8, v10}];
LABEL_9:

  return v13;
}

- (HKConceptIndexKeyPath)initWithFullKeyPath:(id)path range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = HKConceptIndexKeyPath;
  v8 = [(HKConceptIndexKeyPath *)&v12 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    fullKeyPath = v8->_fullKeyPath;
    v8->_fullKeyPath = v9;

    v8->_range.location = location;
    v8->_range.length = length;
  }

  return v8;
}

- (id)head
{
  p_fullKeyPath = &self->_fullKeyPath;
  fullKeyPath = self->_fullKeyPath;
  if (p_fullKeyPath[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = fullKeyPath;
  }

  else
  {
    v4 = [(NSString *)fullKeyPath substringToIndex:?];
  }

  return v4;
}

- (id)tail
{
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSString *)self->_fullKeyPath substringFromIndex:self->_range.length + location, v2];
  }

  return v5;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

+ (void)conceptIndexKeyPathWithFullKeyPath:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKConceptIndexKeyPath.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"fullKeyPath"}];
}

@end