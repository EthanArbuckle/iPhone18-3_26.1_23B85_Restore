@interface VOSCommandManager
- (id)eventForKeyChord:(id)chord;
- (id)eventForKeyChord:(id)chord resolver:(id)resolver info:(id)info;
- (id)eventForTouchGesture:(id)gesture resolver:(id)resolver info:(id)info;
@end

@implementation VOSCommandManager

- (id)eventForTouchGesture:(id)gesture resolver:(id)resolver info:(id)info
{
  gestureCopy = gesture;
  resolverCopy = resolver;
  infoCopy = info;
  v11 = [(VOSCommandManager *)self commandForTouchGesture:gestureCopy withResolver:resolverCopy];
  votEventCommandName = [v11 votEventCommandName];
  if (votEventCommandName)
  {
    if ([v11 commandType] == 1)
    {
      siriShortcut = [v11 siriShortcut];

      if (siriShortcut)
      {
        if (!infoCopy)
        {
          infoCopy = objc_alloc_init(AXIndexMap);
        }

        siriShortcut2 = [v11 siriShortcut];
        [infoCopy setObject:siriShortcut2 forIndex:117];
      }
    }

    v15 = [VOTEvent touchEventWithCommand:votEventCommandName info:infoCopy];
    v16 = [VOTEventUserCommandContext contextWithCommand:v11 gesture:gestureCopy keyChord:0 resolver:resolverCopy];
    [v15 setUserCommandContext:v16];
  }

  else
  {
    v15 = 0;
  }

  v17 = VOTLogEvent();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412802;
    v20 = v15;
    v21 = 2112;
    v22 = gestureCopy;
    v23 = 2112;
    v24 = resolverCopy;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "resolved event '%@' for gesture '%@' with resolver '%@'", &v19, 0x20u);
  }

  return v15;
}

- (id)eventForKeyChord:(id)chord resolver:(id)resolver info:(id)info
{
  chordCopy = chord;
  resolverCopy = resolver;
  infoCopy = info;
  v11 = [(VOSCommandManager *)self commandForKeyChord:chordCopy withResolver:resolverCopy];
  votEventCommandName = [v11 votEventCommandName];
  if (votEventCommandName)
  {
    if ([v11 commandType] == 1)
    {
      siriShortcut = [v11 siriShortcut];

      if (siriShortcut)
      {
        siriShortcut = objc_alloc_init(AXIndexMap);
        siriShortcut2 = [v11 siriShortcut];
        [siriShortcut setObject:siriShortcut2 forIndex:117];
      }
    }

    else
    {
      siriShortcut = 0;
    }

    v15 = [VOTEvent keyEventWithCommand:votEventCommandName keyInfo:infoCopy otherInfo:siriShortcut];
    v16 = [VOTEventUserCommandContext contextWithCommand:v11 gesture:0 keyChord:chordCopy resolver:resolverCopy];
    [v15 setUserCommandContext:v16];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)eventForKeyChord:(id)chord
{
  chordCopy = chord;
  v5 = +[VOSCommandResolver resolverForCurrentHost];
  v6 = [(VOSCommandManager *)self eventForKeyChord:chordCopy resolver:v5 info:0];

  return v6;
}

@end