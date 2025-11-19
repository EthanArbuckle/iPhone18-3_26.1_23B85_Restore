@interface CTStewieIMessageLiteFetchMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieIMessageLiteFetchMessage)initWithCoder:(id)a3;
- (CTStewieIMessageLiteFetchMessage)initWithShortHandles:(id)a3 error:(id *)p_isa;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieIMessageLiteFetchMessage

- (CTStewieIMessageLiteFetchMessage)initWithShortHandles:(id)a3 error:(id *)p_isa
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7 && [v7 count])
  {
    if ([v8 count] < 0x18)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v14)
      {
        v15 = *v26;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            {
              if (p_isa)
              {
                v20 = MEMORY[0x1E696ABC0];
                v29 = *MEMORY[0x1E696A578];
                v30 = @"Invalid shortHandle";
                v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
                *p_isa = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];
              }

              goto LABEL_22;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v24.receiver = self;
      v24.super_class = CTStewieIMessageLiteFetchMessage;
      v19 = [(CTStewieIMessageLiteFetchMessage *)&v24 init];
      p_isa = &v19->super.isa;
      if (v19)
      {
        objc_storeStrong(&v19->_shortHandles, a3);
        self = p_isa;
        p_isa = &self->super.isa;
      }

      else
      {
        self = 0;
      }
    }

    else if (p_isa)
    {
      v9 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v33 = @"Too many short handles";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *p_isa = [v9 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v10];

LABEL_22:
      p_isa = 0;
    }
  }

  else if (p_isa)
  {
    v11 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"Short handles are missing";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    *p_isa = [v11 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];

    goto LABEL_22;
  }

  v22 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (BOOL)isEqualToOther:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
  v6 = [v4 shortHandles];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
    v8 = [v4 shortHandles];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteFetchMessage *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
  v7 = [v6 copyWithZone:a3];
  [v5 setShortHandles:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
  [v5 encodeObject:v4 forKey:@"shortHandles"];
}

- (CTStewieIMessageLiteFetchMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"shortHandles"];
  v9 = [(CTStewieIMessageLiteFetchMessage *)self initWithShortHandles:v8 error:0];

  return v9;
}

@end