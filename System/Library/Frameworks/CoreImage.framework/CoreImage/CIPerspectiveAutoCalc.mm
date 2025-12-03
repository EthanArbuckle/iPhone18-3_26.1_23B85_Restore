@interface CIPerspectiveAutoCalc
- (CIPerspectiveAutoCalc)initWithContext:(id)context image:(id)image config:(id *)config;
- (void)dealloc;
@end

@implementation CIPerspectiveAutoCalc

- (CIPerspectiveAutoCalc)initWithContext:(id)context image:(id)image config:(id *)config
{
  v17[3] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CIPerspectiveAutoCalc;
  v8 = [(CIPerspectiveAutoCalc *)&v15 init];
  contextCopy = context;
  *(v8 + 2) = contextCopy;
  if (!contextCopy)
  {
    v10 = [CIContext alloc];
    v16[0] = @"kCIContextName";
    v16[1] = @"kCIContextCacheIntermediates";
    v17[0] = @"CIPerspectiveAutoCalc";
    v17[1] = MEMORY[0x1E695E110];
    v16[2] = @"kCIContextIntermediateMemoryTarget";
    v17[2] = &unk_1F1081FB0;
    *(v8 + 2) = -[CIContext initWithOptions:](v10, "initWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3]);
  }

  *(v8 + 1) = image;
  v12 = *&config->var2;
  v11 = *&config->var4;
  var6 = config->var6;
  *(v8 + 24) = *&config->var0;
  *(v8 + 9) = var6;
  *(v8 + 56) = v11;
  *(v8 + 40) = v12;
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CIPerspectiveAutoCalc;
  [(CIPerspectiveAutoCalc *)&v3 dealloc];
}

@end