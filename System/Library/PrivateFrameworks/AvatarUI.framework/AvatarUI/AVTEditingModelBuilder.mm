@interface AVTEditingModelBuilder
+ (id)buildCoreModelFromPlistForPlatform:(unint64_t)a3;
+ (id)buildCoreModelFromPlistForPlatform:(unint64_t)a3 withLogger:(id)a4;
@end

@implementation AVTEditingModelBuilder

+ (id)buildCoreModelFromPlistForPlatform:(unint64_t)a3
{
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [v5 logger];
  v7 = [a1 buildCoreModelFromPlistForPlatform:a3 withLogger:v6];

  return v7;
}

+ (id)buildCoreModelFromPlistForPlatform:(unint64_t)a3 withLogger:(id)a4
{
  v5 = a4;
  v6 = [[AVTEditingModelDefinitionsParser alloc] initForPlatform:a3 withLogger:v5];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__AVTEditingModelBuilder_buildCoreModelFromPlistForPlatform_withLogger___block_invoke;
  v9[3] = &unk_1E7F3AAF8;
  v9[4] = &v10;
  [v6 parseWithCompletionHandler:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

@end