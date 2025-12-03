@interface NSConcreteOrderedSetChange
- (NSConcreteOrderedSetChange)initWithType:(unint64_t)type sourceIndex:(unint64_t)index destinationIndex:(unint64_t)destinationIndex value:(id)value;
- (void)dealloc;
@end

@implementation NSConcreteOrderedSetChange

- (NSConcreteOrderedSetChange)initWithType:(unint64_t)type sourceIndex:(unint64_t)index destinationIndex:(unint64_t)destinationIndex value:(id)value
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = NSConcreteOrderedSetChange;
  v10 = [(NSConcreteOrderedSetChange *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_changeType = type;
    v10->_sourceIndex = index;
    v10->_destinationIndex = destinationIndex;
    v10->_value = value;
  }

  return v11;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteOrderedSetChange;
  [(NSConcreteOrderedSetChange *)&v3 dealloc];
}

@end