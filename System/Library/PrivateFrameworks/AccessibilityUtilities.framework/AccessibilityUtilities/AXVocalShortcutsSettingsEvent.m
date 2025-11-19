@interface AXVocalShortcutsSettingsEvent
- (AXVocalShortcutsSettingsEvent)initWithDictionaryRepresentation:(id)a3;
- (AXVocalShortcutsSettingsEvent)initWithState:(BOOL)a3 source:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation AXVocalShortcutsSettingsEvent

- (AXVocalShortcutsSettingsEvent)initWithState:(BOOL)a3 source:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AXVocalShortcutsSettingsEvent;
  v8 = [(AXVocalShortcutsSettingsEvent *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    timestamp = v8->_timestamp;
    v8->_timestamp = v9;

    v8->_state = a3;
    objc_storeStrong(&v8->_source, a4);
    v11 = [MEMORY[0x1E696AE30] processInfo];
    v12 = [v11 processName];
    processName = v8->_processName;
    v8->_processName = v12;
  }

  return v8;
}

- (AXVocalShortcutsSettingsEvent)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AXVocalShortcutsSettingsEvent;
  v5 = [(AXVocalShortcutsSettingsEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = [v4 objectForKeyedSubscript:@"state"];
    v5->_state = [v8 integerValue] != 0;

    v9 = [v4 objectForKeyedSubscript:@"source"];
    source = v5->_source;
    v5->_source = v9;

    v11 = [v4 objectForKeyedSubscript:@"processName"];
    processName = v5->_processName;
    v5->_processName = v11;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"timestamp";
  v3 = [(AXVocalShortcutsSettingsEvent *)self timestamp];
  v10[0] = v3;
  v9[1] = @"state";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXVocalShortcutsSettingsEvent isEnabled](self, "isEnabled")}];
  v10[1] = v4;
  v9[2] = @"source";
  v5 = [(AXVocalShortcutsSettingsEvent *)self source];
  v10[2] = v5;
  v9[3] = @"processName";
  v6 = [(AXVocalShortcutsSettingsEvent *)self processName];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end