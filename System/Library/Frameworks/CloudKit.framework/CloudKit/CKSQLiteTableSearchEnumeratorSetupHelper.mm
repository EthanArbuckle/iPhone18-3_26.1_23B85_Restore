@interface CKSQLiteTableSearchEnumeratorSetupHelper
- (void)orderAscendingByProperty:(id)property;
- (void)orderDescendingByProperty:(id)property;
- (void)setupStatement:(id)statement;
@end

@implementation CKSQLiteTableSearchEnumeratorSetupHelper

- (void)orderAscendingByProperty:(id)property
{
  propertyCopy = property;
  orderByProperties = self->_orderByProperties;
  if (!orderByProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_orderByProperties;
    self->_orderByProperties = v6;

    orderByProperties = self->_orderByProperties;
  }

  objc_msgSend_addObject_(orderByProperties, v4, MEMORY[0x1E695E118]);
  objc_msgSend_addObject_(self->_orderByProperties, v8, propertyCopy);
}

- (void)orderDescendingByProperty:(id)property
{
  propertyCopy = property;
  orderByProperties = self->_orderByProperties;
  if (!orderByProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_orderByProperties;
    self->_orderByProperties = v6;

    orderByProperties = self->_orderByProperties;
  }

  objc_msgSend_addObject_(orderByProperties, v4, MEMORY[0x1E695E110]);
  objc_msgSend_addObject_(self->_orderByProperties, v8, propertyCopy);
}

- (void)setupStatement:(id)statement
{
  statementCopy = statement;
  v8 = objc_msgSend_count(self->_orderByProperties, v4, v5);
  if (!v8)
  {
    v9 = objc_msgSend_table(statementCopy, v6, v7);
    objc_msgSend_defaultSearchOrder_(v9, v10, self);

    v8 = objc_msgSend_count(self->_orderByProperties, v11, v12);
  }

  if (v8 >= 1)
  {
    for (i = 0; i < v8; i += 2)
    {
      v14 = objc_msgSend_objectAtIndex_(self->_orderByProperties, v6, i);
      v17 = objc_msgSend_BOOLValue(v14, v15, v16);

      v19 = objc_msgSend_objectAtIndex_(self->_orderByProperties, v18, i + 1);
      objc_msgSend_orderByProperty_ascending_(statementCopy, v20, v19, v17);
    }
  }

  objc_msgSend_setLimit_(statementCopy, v6, self->_limit);
  objc_msgSend_setOffset_(statementCopy, v21, self->_offset);
}

@end