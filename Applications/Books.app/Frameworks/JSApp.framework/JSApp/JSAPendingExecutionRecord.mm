@interface JSAPendingExecutionRecord
- (JSAPendingExecutionRecord)initWithBlock:(id)block;
- (JSAPendingExecutionRecord)initWithManagedValue:(id)value method:(id)method arguments:(id)arguments type:(unint64_t)type;
- (JSAPendingExecutionRecord)initWithValue:(id)value method:(id)method arguments:(id)arguments type:(unint64_t)type;
- (JSValue)recordValue;
@end

@implementation JSAPendingExecutionRecord

- (JSAPendingExecutionRecord)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = JSAPendingExecutionRecord;
  v5 = [(JSAPendingExecutionRecord *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(blockCopy);
    block = v5->_block;
    v5->_block = v6;

    v5->_type = 1;
  }

  return v5;
}

- (JSAPendingExecutionRecord)initWithManagedValue:(id)value method:(id)method arguments:(id)arguments type:(unint64_t)type
{
  valueCopy = value;
  methodCopy = method;
  argumentsCopy = arguments;
  v21.receiver = self;
  v21.super_class = JSAPendingExecutionRecord;
  v14 = [(JSAPendingExecutionRecord *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_isValueManaged = 1;
    objc_storeStrong(&v14->_managedValue, value);
    v16 = [methodCopy copy];
    method = v15->_method;
    v15->_method = v16;

    v18 = [argumentsCopy copy];
    arguments = v15->_arguments;
    v15->_arguments = v18;

    v15->_type = type;
  }

  return v15;
}

- (JSAPendingExecutionRecord)initWithValue:(id)value method:(id)method arguments:(id)arguments type:(unint64_t)type
{
  valueCopy = value;
  methodCopy = method;
  argumentsCopy = arguments;
  v21.receiver = self;
  v21.super_class = JSAPendingExecutionRecord;
  v14 = [(JSAPendingExecutionRecord *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_isValueManaged = 0;
    objc_storeStrong(&v14->_value, value);
    v16 = [methodCopy copy];
    method = v15->_method;
    v15->_method = v16;

    v18 = [argumentsCopy copy];
    arguments = v15->_arguments;
    v15->_arguments = v18;

    v15->_type = type;
  }

  return v15;
}

- (JSValue)recordValue
{
  if ([(JSAPendingExecutionRecord *)self isValueManaged])
  {
    managedValue = [(JSAPendingExecutionRecord *)self managedValue];
    value = [managedValue value];
  }

  else
  {
    value = [(JSAPendingExecutionRecord *)self value];
  }

  return value;
}

@end