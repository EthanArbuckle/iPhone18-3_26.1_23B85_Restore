@interface BSMachPortSendOnceRight
- (BSMachPortSendOnceRight)initWithPort:(unsigned int)a3;
- (id)initFromReceiveRight:(id)a3;
@end

@implementation BSMachPortSendOnceRight

- (BSMachPortSendOnceRight)initWithPort:(unsigned int)a3
{
  v3 = *&a3;
  if (a3 - 1 <= 0xFFFFFFFD && !BSMachPortIsType(a3, 1310720))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"BSMachPortRight.m" lineNumber:448 description:@"you must pass in a send-once (or dead) right or NULL"];
  }

  v6 = _BSMachPortRightDescription(2u, 0, @"take", v3, 0);
  v7 = [(BSMachPortRight *)self _initWithPort:v3 type:2 owner:0 trace:v6];

  return v7;
}

- (id)initFromReceiveRight:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__BSMachPortSendOnceRight_initFromReceiveRight___block_invoke;
  v10[3] = &unk_1E72CB728;
  v10[4] = &v11;
  [a3 accessPort:v10];
  v5 = *(v12 + 6);
  v6 = [a3 trace];
  v7 = _BSMachPortRightDescription(2u, 0, @"make", v5, v6);

  v8 = [(BSMachPortRight *)self _initWithPort:2 type:0 owner:v7 trace:?];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __48__BSMachPortSendOnceRight_initFromReceiveRight___block_invoke(uint64_t result, uint64_t a2)
{
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    v2 = result;
    result = BSMachCreateSendOnceRight(a2);
    *(*(*(v2 + 32) + 8) + 24) = result;
  }

  return result;
}

@end