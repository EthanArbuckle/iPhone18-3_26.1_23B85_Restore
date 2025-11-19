@interface PKFakeDisableDelegate
+ (BOOL)_shouldAttachForView:(id)a3;
+ (id)_infoInProcess;
@end

@implementation PKFakeDisableDelegate

+ (id)_infoInProcess
{
  if (qword_1ED6A5520 != -1)
  {
    dispatch_once(&qword_1ED6A5520, &__block_literal_global_158);
  }

  v3 = qword_1ED6A5518;

  return v3;
}

void __39__PKFakeDisableDelegate__infoInProcess__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:10];
  v1 = qword_1ED6A5510;
  qword_1ED6A5510 = v0;

  v2 = qword_1ED6A5510;
  v3 = [_PKFakeFixInfo disableInfoWithInteractionValue:0xBE3DE77E1BA5CA28];
  [v2 setObject:v3 forKey:0xD6014EA89BD82C72];

  v4 = qword_1ED6A5510;
  v5 = [_PKFakeFixInfo disableInfoWithInteractionValue:0xBE3DE77E1BA5CA28];
  [v4 setObject:v5 forKey:0x55AFCEEEBCB7DC0CLL];

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v6 bundleIdentifier];

  v7 = [qword_1ED6A5510 objectForKey:{objc_msgSend(v9, "hash")}];
  v8 = qword_1ED6A5518;
  qword_1ED6A5518 = v7;
}

+ (BOOL)_shouldAttachForView:(id)a3
{
  v4 = a3;
  if (v4 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    v6 = [a1 _infoInProcess];
    if ([v6 interactionValue])
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v8 hash];
      v5 = v9 == [v6 interactionValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end