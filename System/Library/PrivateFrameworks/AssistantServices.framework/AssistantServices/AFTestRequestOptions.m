@interface AFTestRequestOptions
+ (id)newWithBuilder:(id)a3;
- (AFTestRequestOptions)initWithBuilder:(id)a3;
- (AFTestRequestOptions)initWithCoder:(id)a3;
- (AFTestRequestOptions)initWithRequestPath:(int64_t)a3 inputOrigin:(id)a4 isEyesFree:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFTestRequestOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  requestPath = self->_requestPath;
  v7 = a3;
  v6 = [v4 numberWithInteger:requestPath];
  [v7 encodeObject:v6 forKey:@"AFTestRequestOptions::requestPath"];

  [v7 encodeObject:self->_inputOrigin forKey:@"AFTestRequestOptions::inputOrigin"];
  [v7 encodeObject:self->_isEyesFree forKey:@"AFTestRequestOptions::isEyesFree"];
}

- (AFTestRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFTestRequestOptions::requestPath"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFTestRequestOptions::inputOrigin"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFTestRequestOptions::isEyesFree"];

  v9 = [(AFTestRequestOptions *)self initWithRequestPath:v6 inputOrigin:v7 isEyesFree:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      requestPath = self->_requestPath;
      if (requestPath == [(AFTestRequestOptions *)v5 requestPath])
      {
        v7 = [(AFTestRequestOptions *)v5 inputOrigin];
        inputOrigin = self->_inputOrigin;
        if (inputOrigin == v7 || [(NSString *)inputOrigin isEqual:v7])
        {
          v9 = [(AFTestRequestOptions *)v5 isEyesFree];
          isEyesFree = self->_isEyesFree;
          v11 = isEyesFree == v9 || [(NSNumber *)isEyesFree isEqual:v9];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFTestRequestOptions)initWithRequestPath:(int64_t)a3 inputOrigin:(id)a4 isEyesFree:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__AFTestRequestOptions_initWithRequestPath_inputOrigin_isEyesFree___block_invoke;
  v14[3] = &unk_1E7341BA8;
  v16 = v9;
  v17 = a3;
  v15 = v8;
  v10 = v9;
  v11 = v8;
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

- (AFTestRequestOptions)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFTestRequestOptions;
  v5 = [(AFTestRequestOptions *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFTestRequestOptionsMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFTestRequestOptionsMutation *)v7 isDirty])
    {
      v6->_requestPath = [(_AFTestRequestOptionsMutation *)v7 getRequestPath];
      v8 = [(_AFTestRequestOptionsMutation *)v7 getInputOrigin];
      v9 = [v8 copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v9;

      v11 = [(_AFTestRequestOptionsMutation *)v7 getIsEyesFree];
      v12 = [v11 copy];
      isEyesFree = v6->_isEyesFree;
      v6->_isEyesFree = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFTestRequestOptionsMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFTestRequestOptionsMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFTestRequestOptions);
      v6->_requestPath = [(_AFTestRequestOptionsMutation *)v5 getRequestPath];
      v7 = [(_AFTestRequestOptionsMutation *)v5 getInputOrigin];
      v8 = [v7 copy];
      inputOrigin = v6->_inputOrigin;
      v6->_inputOrigin = v8;

      v10 = [(_AFTestRequestOptionsMutation *)v5 getIsEyesFree];
      v11 = [v10 copy];
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