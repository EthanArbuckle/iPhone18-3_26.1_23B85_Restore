@interface NSObject(VSKeyValueBinding)
- (id)vs_valueForBinding:()VSKeyValueBinding;
- (void)vs_bind:()VSKeyValueBinding toObject:withKeyPath:options:;
- (void)vs_setValue:()VSKeyValueBinding forBinding:;
- (void)vs_unbind:()VSKeyValueBinding;
@end

@implementation NSObject(VSKeyValueBinding)

- (void)vs_bind:()VSKeyValueBinding toObject:withKeyPath:options:
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v16)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
    if (v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_10:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPath parameter must not be nil."];
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The observable parameter must not be nil."];
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_11:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
LABEL_5:
  v13 = objc_autoreleasePoolPush();
  v14 = [a1 vs_binderCreatingIfNeeded:1];
  v15 = [[VSBindingInfo alloc] initWithObservedObject:v10 keyPath:v11 options:v12];
  [v14 establishBinding:v16 withInfo:v15];

  objc_autoreleasePoolPop(v13);
}

- (void)vs_unbind:()VSKeyValueBinding
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [a1 vs_binderCreatingIfNeeded:0];
  [v5 tearDownBinding:v6];

  objc_autoreleasePoolPop(v4);
}

- (id)vs_valueForBinding:()VSKeyValueBinding
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [a1 vs_binderCreatingIfNeeded:0];
  v7 = [v6 valueForBinding:v4];

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)vs_setValue:()VSKeyValueBinding forBinding:
{
  v9 = a3;
  v6 = a4;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The binding parameter must not be nil."];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [a1 vs_binderCreatingIfNeeded:0];
  [v8 setValue:v9 forBinding:v6];

  objc_autoreleasePoolPop(v7);
}

@end