@interface VOTEventUserCommandContext
+ (VOTEventUserCommandContext)contextWithCommand:(id)command gesture:(id)gesture keyChord:(id)chord resolver:(id)resolver;
@end

@implementation VOTEventUserCommandContext

+ (VOTEventUserCommandContext)contextWithCommand:(id)command gesture:(id)gesture keyChord:(id)chord resolver:(id)resolver
{
  resolverCopy = resolver;
  chordCopy = chord;
  gestureCopy = gesture;
  commandCopy = command;
  v13 = objc_alloc_init(VOTEventUserCommandContext);
  [(VOTEventUserCommandContext *)v13 setCommand:commandCopy];

  [(VOTEventUserCommandContext *)v13 setGesture:gestureCopy];
  [(VOTEventUserCommandContext *)v13 setKeyChord:chordCopy];

  [(VOTEventUserCommandContext *)v13 setResolver:resolverCopy];

  return v13;
}

@end