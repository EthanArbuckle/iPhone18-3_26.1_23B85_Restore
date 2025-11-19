@interface BKSAbstractDefaults
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation BKSAbstractDefaults

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKSAbstractDefaults *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__BKSAbstractDefaults_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E6F47C78;
  v10[4] = self;
  v5 = v4;
  v11 = v5;
  v6 = [v5 modifyBody:v10];
  v7 = v11;
  v8 = v5;

  return v5;
}

void __61__BKSAbstractDefaults_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  outCount = 0;
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = class_copyPropertyList(v3, &outCount);
  if (v4)
  {
    v5 = v4;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v7 = v5[i];
        Name = property_getName(v7);
        if (Name)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithCString:Name encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
          v10 = property_copyAttributeValue(v7, "G");
          if (v10)
          {
            v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];

            v9 = v11;
          }

          v12 = *(a1 + 40);
          v13 = [*(a1 + 32) valueForKey:v9];
          v14 = [v12 appendObject:v13 withName:v9];
        }
      }
    }

    free(v5);
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSAbstractDefaults *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKSAbstractDefaults *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end