@interface BEKeyEntryContext
- (BEKeyEntryContext)initWithKeyEntry:(id)a3;
@end

@implementation BEKeyEntryContext

- (BEKeyEntryContext)initWithKeyEntry:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BEKeyEntryContext;
  v5 = [(BEKeyEntryContext *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCBB0]);
    v7 = [v4 _uikitKeyEvent];
    v8 = [v6 initWithKeyEvent:v7];
    backingKeyEventContext = v5->_backingKeyEventContext;
    v5->_backingKeyEventContext = v8;
  }

  return v5;
}

@end