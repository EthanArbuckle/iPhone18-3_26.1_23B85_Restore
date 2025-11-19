@interface JSAPendingExecutionRecord
- (JSAPendingExecutionRecord)initWithBlock:(id)a3;
- (JSAPendingExecutionRecord)initWithManagedValue:(id)a3 method:(id)a4 arguments:(id)a5 type:(unint64_t)a6;
- (JSAPendingExecutionRecord)initWithValue:(id)a3 method:(id)a4 arguments:(id)a5 type:(unint64_t)a6;
- (JSValue)recordValue;
@end

@implementation JSAPendingExecutionRecord

- (JSAPendingExecutionRecord)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = JSAPendingExecutionRecord;
  v5 = [(JSAPendingExecutionRecord *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    block = v5->_block;
    v5->_block = v6;

    v5->_type = 1;
  }

  return v5;
}

- (JSAPendingExecutionRecord)initWithManagedValue:(id)a3 method:(id)a4 arguments:(id)a5 type:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = JSAPendingExecutionRecord;
  v14 = [(JSAPendingExecutionRecord *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_isValueManaged = 1;
    objc_storeStrong(&v14->_managedValue, a3);
    v16 = [v12 copy];
    method = v15->_method;
    v15->_method = v16;

    v18 = [v13 copy];
    arguments = v15->_arguments;
    v15->_arguments = v18;

    v15->_type = a6;
  }

  return v15;
}

- (JSAPendingExecutionRecord)initWithValue:(id)a3 method:(id)a4 arguments:(id)a5 type:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = JSAPendingExecutionRecord;
  v14 = [(JSAPendingExecutionRecord *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_isValueManaged = 0;
    objc_storeStrong(&v14->_value, a3);
    v16 = [v12 copy];
    method = v15->_method;
    v15->_method = v16;

    v18 = [v13 copy];
    arguments = v15->_arguments;
    v15->_arguments = v18;

    v15->_type = a6;
  }

  return v15;
}

- (JSValue)recordValue
{
  if ([(JSAPendingExecutionRecord *)self isValueManaged])
  {
    v3 = [(JSAPendingExecutionRecord *)self managedValue];
    v4 = [v3 value];
  }

  else
  {
    v4 = [(JSAPendingExecutionRecord *)self value];
  }

  return v4;
}

@end