@interface NSFileAccessIntent
+ (NSFileAccessIntent)readingIntentWithURL:(NSURL *)url options:(NSFileCoordinatorReadingOptions)options;
+ (NSFileAccessIntent)writingIntentWithURL:(NSURL *)url options:(NSFileCoordinatorWritingOptions)options;
- (NSFileAccessIntent)canonicalIntent;
- (id)description;
- (void)dealloc;
@end

@implementation NSFileAccessIntent

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileAccessIntent;
  [(NSFileAccessIntent *)&v3 dealloc];
}

+ (NSFileAccessIntent)readingIntentWithURL:(NSURL *)url options:(NSFileCoordinatorReadingOptions)options
{
  objc_opt_class();
  v6 = objc_opt_new();
  *(v6 + 8) = url;
  *(v6 + 16) = options;
  *(v6 + 28) = 1;

  return v6;
}

+ (NSFileAccessIntent)writingIntentWithURL:(NSURL *)url options:(NSFileCoordinatorWritingOptions)options
{
  objc_opt_class();
  v6 = objc_opt_new();
  *(v6 + 8) = url;
  *(v6 + 16) = options;
  *(v6 + 28) = 0;

  return v6;
}

- (NSFileAccessIntent)canonicalIntent
{
  selfCopy = self;
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (self->_isRead)
  {
    url = self->_url;
    options = self->_options;
    v4 = [NSFileCoordinator _canonicalURLForURL:url modifyingReadingOptions:&options removedResolveFlags:&v9];
    if (v9)
    {
      v5 = [NSFileAccessIntent readingIntentWithURL:v4 options:options];
LABEL_6:
      selfCopy = v5;
      v5->_removedResolveFlags = v9;
    }
  }

  else
  {
    v6 = [NSFileCoordinator _canonicalURLForURL:self->_url modifyingReadingOptions:0 removedResolveFlags:&v9];
    if (v9)
    {
      v5 = [NSFileAccessIntent writingIntentWithURL:v6 options:selfCopy->_options];
      goto LABEL_6;
    }
  }

  return selfCopy;
}

- (id)description
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileAccessIntent;
  v3 = [(NSFileAccessIntent *)&v6 description];
  if (self->_isRead)
  {
    v4 = @"Reading";
  }

  else
  {
    v4 = @"Writing";
  }

  return [NSString stringWithFormat:@"%@ %@ %@ with options: 0x%lx", v3, v4, self->_url, self->_options];
}

@end