@interface _SWHighlightEventAllowList
+ (Class)eventClassForType:(int64_t)type;
+ (id)_eventClassToTypeMap;
+ (id)allowedClasses;
+ (int64_t)eventTypeForClass:(Class)class;
@end

@implementation _SWHighlightEventAllowList

+ (id)_eventClassToTypeMap
{
  v14[8] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v13[0] = v2;
  v14[0] = &unk_1F3ABF9F0;
  v3 = objc_opt_self();
  v13[1] = v3;
  v14[1] = &unk_1F3ABFA08;
  v4 = objc_opt_self();
  v13[2] = v4;
  v14[2] = &unk_1F3ABFA20;
  v5 = objc_opt_self();
  v13[3] = v5;
  v14[3] = &unk_1F3ABFA38;
  v6 = objc_opt_self();
  v13[4] = v6;
  v14[4] = &unk_1F3ABF9F0;
  v7 = objc_opt_self();
  v13[5] = v7;
  v14[5] = &unk_1F3ABFA08;
  v8 = objc_opt_self();
  v13[6] = v8;
  v14[6] = &unk_1F3ABFA20;
  v9 = objc_opt_self();
  v13[7] = v9;
  v14[7] = &unk_1F3ABFA38;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)allowedClasses
{
  v2 = MEMORY[0x1E695DFD8];
  _eventClassToTypeMap = [self _eventClassToTypeMap];
  allKeys = [_eventClassToTypeMap allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

+ (Class)eventClassForType:(int64_t)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v11 = 0;
  _eventClassToTypeMap = [self _eventClassToTypeMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___SWHighlightEventAllowList_eventClassForType___block_invoke;
  v7[3] = &unk_1E7FDE128;
  v7[4] = &v8;
  v7[5] = type;
  [_eventClassToTypeMap enumerateKeysAndObjectsUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (int64_t)eventTypeForClass:(Class)class
{
  _eventClassToTypeMap = [self _eventClassToTypeMap];
  v5 = [_eventClassToTypeMap objectForKey:class];
  v6 = v5;
  v7 = &unk_1F3ABFA50;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  integerValue = [v8 integerValue];
  return integerValue;
}

@end