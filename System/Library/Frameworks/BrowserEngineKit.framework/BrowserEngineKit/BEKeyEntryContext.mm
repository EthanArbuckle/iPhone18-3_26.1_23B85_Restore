@interface BEKeyEntryContext
- (BEKeyEntryContext)initWithKeyEntry:(id)entry;
@end

@implementation BEKeyEntryContext

- (BEKeyEntryContext)initWithKeyEntry:(id)entry
{
  entryCopy = entry;
  v11.receiver = self;
  v11.super_class = BEKeyEntryContext;
  v5 = [(BEKeyEntryContext *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCBB0]);
    _uikitKeyEvent = [entryCopy _uikitKeyEvent];
    v8 = [v6 initWithKeyEvent:_uikitKeyEvent];
    backingKeyEventContext = v5->_backingKeyEventContext;
    v5->_backingKeyEventContext = v8;
  }

  return v5;
}

@end