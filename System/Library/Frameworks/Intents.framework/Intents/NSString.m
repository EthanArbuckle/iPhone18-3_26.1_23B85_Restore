@interface NSString
@end

@implementation NSString

void __74__NSString_ProtoUtils___intents_allowedUnarchiverClassesForProtoAsStrings__block_invoke()
{
  v0 = &unk_1F02DD200;
  v1 = [&unk_1F02DD200 if_compactMap:&__block_literal_global_12];
  v2 = [v1 mutableCopy];
  [v2 addObjectsFromArray:&unk_1F02DBDC0];
  v3 = [v2 copy];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  v5 = _intents_allowedUnarchiverClassesForProtoAsStrings___classesAsStrings;
  _intents_allowedUnarchiverClassesForProtoAsStrings___classesAsStrings = v4;
}

id __74__NSString_ProtoUtils___intents_allowedUnarchiverClassesForProtoAsStrings__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"ObjCCollectionType"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v2 objectForKey:@"ObjCType"];
    if (!v4)
    {
LABEL_6:
      v8 = 0;
      goto LABEL_9;
    }
  }

  v5 = [v4 rangeOfString:@"<"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v7 = [v4 rangeOfCharacterFromSet:v6];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = [v4 stringByReplacingCharactersInRange:v7 withString:{objc_msgSend(v4, "length") - v7, &stru_1F01E0850}];
LABEL_9:

  return v8;
}

void __74__NSString_ProtoUtils___intents_allowedUnarchiverClassesForProtoAsClasses__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _intents_allowedUnarchiverClassesForProtoAsStrings];
  v5 = [v1 allObjects];

  v2 = [v5 if_compactMap:&__block_literal_global_94172];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  v4 = _intents_allowedUnarchiverClassesForProtoAsClasses___allowedClasses;
  _intents_allowedUnarchiverClassesForProtoAsClasses___allowedClasses = v3;
}

@end