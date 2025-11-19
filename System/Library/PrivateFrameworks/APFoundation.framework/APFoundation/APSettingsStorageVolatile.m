@interface APSettingsStorageVolatile
- (APSettingsStorageVolatile)initWithDefaultValues:(id)a3;
- (id)valueForKey:(id)a3 error:(id *)a4;
- (void)setValue:(id)a3 forKey:(id)a4 error:(id *)a5;
@end

@implementation APSettingsStorageVolatile

- (APSettingsStorageVolatile)initWithDefaultValues:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = APSettingsStorageVolatile;
  v8 = [(APSettingsStorageVolatile *)&v17 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(v4, v5, v6, v7);
    defaults = v8->_defaults;
    v8->_defaults = v9;

    v11 = objc_alloc(MEMORY[0x1E695DF90]);
    v14 = objc_msgSend_initWithCapacity_(v11, v12, 1, v13);
    volatileData = v8->_volatileData;
    v8->_volatileData = v14;
  }

  return v8;
}

- (id)valueForKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v9 = objc_msgSend_volatileData(self, v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(v9, v10, v5, v11);

  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v17 = objc_msgSend_defaults(self, v13, v14, v15);
    v21 = objc_msgSend_lastNamespacedComponent(v5, v18, v19, v20);
    v16 = objc_msgSend_objectForKey_(v17, v22, v21, v23);
  }

  return v16;
}

- (void)setValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v27 = a3;
  v7 = a4;
  v11 = objc_msgSend_defaults(self, v8, v9, v10);
  v15 = objc_msgSend_lastNamespacedComponent(v7, v12, v13, v14);
  v18 = objc_msgSend_objectForKey_(v11, v16, v15, v17);

  isEqual = objc_msgSend_isEqual_(v18, v19, v27, v20);
  v25 = objc_msgSend_volatileData(self, v22, v23, v24);
  v26 = v25;
  if (!v27 || isEqual)
  {
    objc_msgSend_setValue_forKey_(v25, v27, 0, v7);
  }

  else
  {
    objc_msgSend_setObject_forKey_(v25, v27, v27, v7);
  }
}

@end