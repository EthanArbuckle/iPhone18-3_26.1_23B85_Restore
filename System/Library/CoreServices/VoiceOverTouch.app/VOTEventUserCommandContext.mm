@interface VOTEventUserCommandContext
+ (VOTEventUserCommandContext)contextWithCommand:(id)a3 gesture:(id)a4 keyChord:(id)a5 resolver:(id)a6;
@end

@implementation VOTEventUserCommandContext

+ (VOTEventUserCommandContext)contextWithCommand:(id)a3 gesture:(id)a4 keyChord:(id)a5 resolver:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(VOTEventUserCommandContext);
  [(VOTEventUserCommandContext *)v13 setCommand:v12];

  [(VOTEventUserCommandContext *)v13 setGesture:v11];
  [(VOTEventUserCommandContext *)v13 setKeyChord:v10];

  [(VOTEventUserCommandContext *)v13 setResolver:v9];

  return v13;
}

@end