@interface AFDisambiguationInfo
- (AFDisambiguationInfo)init;
- (AFDisambiguationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDisambiguationInfo

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"_version"];
  [coderCopy encodeObject:self->_history forKey:@"_history"];
}

- (AFDisambiguationInfo)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AFDisambiguationInfo;
  v5 = [(AFDisambiguationInfo *)&v13 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"_version"];
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_history"];
    history = v5->_history;
    v5->_history = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (AFDisambiguationInfo)init
{
  v3.receiver = self;
  v3.super_class = AFDisambiguationInfo;
  result = [(AFDisambiguationInfo *)&v3 init];
  if (result)
  {
    result->_version = 0;
  }

  return result;
}

@end