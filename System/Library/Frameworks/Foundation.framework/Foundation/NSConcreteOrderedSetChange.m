@interface NSConcreteOrderedSetChange
- (NSConcreteOrderedSetChange)initWithType:(unint64_t)a3 sourceIndex:(unint64_t)a4 destinationIndex:(unint64_t)a5 value:(id)a6;
- (void)dealloc;
@end

@implementation NSConcreteOrderedSetChange

- (NSConcreteOrderedSetChange)initWithType:(unint64_t)a3 sourceIndex:(unint64_t)a4 destinationIndex:(unint64_t)a5 value:(id)a6
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = NSConcreteOrderedSetChange;
  v10 = [(NSConcreteOrderedSetChange *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_changeType = a3;
    v10->_sourceIndex = a4;
    v10->_destinationIndex = a5;
    v10->_value = a6;
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