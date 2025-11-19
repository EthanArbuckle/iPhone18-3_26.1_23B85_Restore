@interface SNDSPGraphInterpreter
- (SNDSPGraphInterpreter)init;
@end

@implementation SNDSPGraphInterpreter

- (SNDSPGraphInterpreter)init
{
  v16 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SNDSPGraphInterpreter;
  v2 = [(SNDSPGraphInterpreter *)&v12 init];
  if (!v2)
  {
    return 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = sub_1C9A79250;
  v10 = &unk_1E83475F8;
  v3 = v2;
  v11 = v3;
  v13 = &unk_1F4952F50;
  v14 = 0;
  v15 = &v13;
  v4 = v8;
  v6 = (v9)(v4, v5);

  sub_1C9A67A80(&v13);
  if ((v6 & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

@end