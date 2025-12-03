@interface AFTestRequestOptions
+ (id)newWithBuilder:(id)builder;
- (AFTestRequestOptions)initWithBuilder:(id)builder;
- (AFTestRequestOptions)initWithCoder:(id)coder;
- (AFTestRequestOptions)initWithRequestPath:(int64_t)path inputOrigin:(id)origin isEyesFree:(id)free;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFTestRequestOptions

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  requestPath = self->_requestPath;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:requestPath];
  [coderCopy encodeObject:v6 forKey:@"AFTestRequestOptions::requestPath"];

  [coderCopy encodeObject:self->_inputOrigin forKey:@"AFTestRequestOptions::inputOrigin"];
  [coderCopy encodeObject:self->_isEyesFree forKey:@"AFTestRequestOptions::isEyesFree"];
}

- (AFTestRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFTestRequestOptions::requestPath"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFTestRequestOptions::inputOrigin"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFTestRequestOptions::isEyesFree"];

  v9 = [(AFTestRequestOptions *)self initWithRequestPath:integerValue inputOrigin:v7 isEyesFree:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestPath = self->_requestPath;
      if (requestPath == [(AFTestRequestOptions *)v5 requestPath])
      {
        inputOrigin = [(AFTestRequestOptions *)v5 inputOrigin];
        inputOrigin = self->_inputOrigin;
        if (inputOrigin == inputOrigin || [(NSString *)inputOrigin isEqual:inputOrigin])
        {
          isEyesFree = [(AFTestRequestOptions *)v5 isEyesFree];
          isEyesFree = self->_isEyesFree;
          v11 = isEyesFree == isEyesFree || [(NSNumber *)isEyesFree isEqual:isEyesFree];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestPath];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_inputOrigin hash];
  v6 = v5 ^ [(NSNumber *)self->_isEyesFree hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFTestRequestOptions;
  v5 = [(AFTestRequestOptions *)&v11 description];
  requestPath = self->_requestPath;
  if (requestPath > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7342EB0[requestPath];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {requestPath = %@, inputOrigin = %@, isEyesFree = %@}", v5, v8, self->_inputOrigin, self->_isEyesFree];

  return v9;
}

- (AFTestRequestOptions)initWithRequestPath:(int64_t)path inputOrigin:(id)origin isEyesFree:(id)free
{
  originCopy = origin;
  freeCopy = free;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__AFTestRequestOptions_initWithRequestPath_inputOrigin_isEyesFree___block_invoke;
  v14[3] = &unk_1E7341BA8;
  v16 = freeCopy;
  pathCopy = path;
  v15 = originCopy;
  v10 = freeCopy;
  v11 = originCopy;
  v12 = [(AFTestRequestOptions *)self initWithBuilder:v14];

  return v12;
}

void __67__AFTestRequestOptions_initWithRequestPath_inputOrigin_isEyesFree___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  [v4 setRequestPath:v3];
  [v4 setInputOrigin:a1[4]];
  [v4 setIsEyesFree:a1[5]];
}

- (AFTestRequestOptions)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFTestRequestOptions;
  v5 = [(AFTestRequestOptions *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFTestRequestOptionsMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFTestRequestOptionsMutation *)v7 isDirty])
    {
      v6->_requestPath = [(_AFTestRequestOptionsMutation *)v7 getRequestPath];
      getInputOrigin = [(_AFTestRequestOptionsMutation *)v7 getInputOrigin];
      v9 = [getInputOrigin copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v9;

      getIsEyesFree = [(_AFTestRequestOptionsMutation *)v7 getIsEyesFree];
      v12 = [getIsEyesFree copy];
      isEyesFree = v6->_isEyesFree;
      v6->_isEyesFree = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFTestRequestOptionsMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFTestRequestOptionsMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFTestRequestOptions);
      v6->_requestPath = [(_AFTestRequestOptionsMutation *)v5 getRequestPath];
      getInputOrigin = [(_AFTestRequestOptionsMutation *)v5 getInputOrigin];
      v8 = [getInputOrigin copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v8;

      getIsEyesFree = [(_AFTestRequestOptionsMutation *)v5 getIsEyesFree];
      v11 = [getIsEyesFree copy];
      isEyesFree = v6->_isEyesFree;
      v6->_isEyesFree = v11;
    }

    else
    {
      v6 = [(AFTestRequestOptions *)self copy];
    }
  }

  else
  {
    v6 = [(AFTestRequestOptions *)self copy];
  }

  return v6;
}

@end