@interface SRCompactViewControllerContentTesterState
- (SRCompactViewControllerContentTesterState)initWithDeviceIsPad:(BOOL)pad navigationStackIsPopping:(BOOL)popping navigationStackSize:(int64_t)size navigationBarHasContent:(BOOL)content multiLevelViewHasContent:(BOOL)hasContent editableUtteranceViewHasContent:(BOOL)viewHasContent compactViewHasContent:(BOOL)compactViewHasContent siriViewControllerIsEditing:(BOOL)self0 keyboardHasContent:(BOOL)self1 contextMenuIsPresented:(BOOL)self2;
- (id)_debugDescriptionForProperty:(id)property BOOLValue:(BOOL)value;
- (id)_debugDescriptionForProperty:(id)property integerValue:(int64_t)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
@end

@implementation SRCompactViewControllerContentTesterState

- (SRCompactViewControllerContentTesterState)initWithDeviceIsPad:(BOOL)pad navigationStackIsPopping:(BOOL)popping navigationStackSize:(int64_t)size navigationBarHasContent:(BOOL)content multiLevelViewHasContent:(BOOL)hasContent editableUtteranceViewHasContent:(BOOL)viewHasContent compactViewHasContent:(BOOL)compactViewHasContent siriViewControllerIsEditing:(BOOL)self0 keyboardHasContent:(BOOL)self1 contextMenuIsPresented:(BOOL)self2
{
  v19.receiver = self;
  v19.super_class = SRCompactViewControllerContentTesterState;
  result = [(SRCompactViewControllerContentTesterState *)&v19 init];
  if (result)
  {
    result->_deviceIsPad = pad;
    result->_navigationStackIsPopping = popping;
    result->_navigationStackSize = size;
    result->_navigationBarHasContent = content;
    result->_multiLevelViewHasContent = hasContent;
    result->_editableUtteranceViewHasContent = viewHasContent;
    result->_compactViewHasContent = compactViewHasContent;
    result->_siriViewControllerIsEditing = editing;
    result->_keyboardHasContent = keyboardHasContent;
    result->_contextMenuIsPresented = presented;
  }

  return result;
}

- (id)_debugDescriptionForProperty:(id)property BOOLValue:(BOOL)value
{
  if (value)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  return [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:property formattedValue:v4];
}

- (id)_debugDescriptionForProperty:(id)property integerValue:(int64_t)value
{
  propertyCopy = property;
  value = [NSString stringWithFormat:@"%zd", value];
  v8 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:propertyCopy formattedValue:value];

  return v8;
}

- (id)debugDescription
{
  v3 = [NSMutableString stringWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  v23 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"deviceIsPad" BOOLValue:[(SRCompactViewControllerContentTesterState *)self deviceIsPad]];
  v29[0] = v23;
  v22 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"navigationStackIsPopping" BOOLValue:[(SRCompactViewControllerContentTesterState *)self deviceIsPad]];
  v29[1] = v22;
  v5 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"navigationStackSize" integerValue:[(SRCompactViewControllerContentTesterState *)self navigationStackSize]];
  v29[2] = v5;
  v6 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"navigationBarHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self navigationBarHasContent]];
  v29[3] = v6;
  v7 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"multiLevelViewHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self multiLevelViewHasContent]];
  v29[4] = v7;
  v8 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"editableUtteranceViewHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self editableUtteranceViewHasContent]];
  v29[5] = v8;
  v9 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"compactViewHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self compactViewHasContent]];
  v29[6] = v9;
  v10 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"siriViewControllerIsEditing" BOOLValue:[(SRCompactViewControllerContentTesterState *)self siriViewControllerIsEditing]];
  v29[7] = v10;
  v11 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"keyboardHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self keyboardHasContent]];
  v29[8] = v11;
  v12 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"contextMenuIsPresented" BOOLValue:[(SRCompactViewControllerContentTesterState *)self contextMenuIsPresented]];
  v29[9] = v12;
  v13 = [NSArray arrayWithObjects:v29 count:10];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        [v3 appendString:@"\n\t"];
        [v3 appendString:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  [v3 appendString:@"\n>"];
  v20 = [v3 mutableCopy];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15 = [SRCompactViewControllerContentTesterState alloc];
  deviceIsPad = [(SRCompactViewControllerContentTesterState *)self deviceIsPad];
  navigationStackIsPopping = [(SRCompactViewControllerContentTesterState *)self navigationStackIsPopping];
  navigationStackSize = [(SRCompactViewControllerContentTesterState *)self navigationStackSize];
  navigationBarHasContent = [(SRCompactViewControllerContentTesterState *)self navigationBarHasContent];
  multiLevelViewHasContent = [(SRCompactViewControllerContentTesterState *)self multiLevelViewHasContent];
  editableUtteranceViewHasContent = [(SRCompactViewControllerContentTesterState *)self editableUtteranceViewHasContent];
  compactViewHasContent = [(SRCompactViewControllerContentTesterState *)self compactViewHasContent];
  siriViewControllerIsEditing = [(SRCompactViewControllerContentTesterState *)self siriViewControllerIsEditing];
  keyboardHasContent = [(SRCompactViewControllerContentTesterState *)self keyboardHasContent];
  BYTE3(v14) = [(SRCompactViewControllerContentTesterState *)self contextMenuIsPresented];
  BYTE2(v14) = keyboardHasContent;
  BYTE1(v14) = siriViewControllerIsEditing;
  LOBYTE(v14) = compactViewHasContent;
  return [SRCompactViewControllerContentTesterState initWithDeviceIsPad:v15 navigationStackIsPopping:"initWithDeviceIsPad:navigationStackIsPopping:navigationStackSize:navigationBarHasContent:multiLevelViewHasContent:editableUtteranceViewHasContent:compactViewHasContent:siriViewControllerIsEditing:keyboardHasContent:contextMenuIsPresented:" navigationStackSize:deviceIsPad navigationBarHasContent:navigationStackIsPopping multiLevelViewHasContent:navigationStackSize editableUtteranceViewHasContent:navigationBarHasContent compactViewHasContent:multiLevelViewHasContent siriViewControllerIsEditing:editableUtteranceViewHasContent keyboardHasContent:v14 contextMenuIsPresented:?];
}

@end