@interface CLSRelation
- (BOOL)isEquivalentToRelation:(id)relation;
- (BOOL)isInverseOfRelation:(id)relation;
- (CLSRelation)initWithFromEntity:(Class)entity toEntity:(Class)toEntity onFromKey:(id)key toKey:(id)toKey faultable:(BOOL)faultable;
- (id)description;
@end

@implementation CLSRelation

- (CLSRelation)initWithFromEntity:(Class)entity toEntity:(Class)toEntity onFromKey:(id)key toKey:(id)toKey faultable:(BOOL)faultable
{
  keyCopy = key;
  toKeyCopy = toKey;
  v18.receiver = self;
  v18.super_class = CLSRelation;
  v15 = [(CLSRelation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromEntity, entity);
    objc_storeStrong(&v16->_toEntity, toEntity);
    objc_storeStrong(&v16->_fromKey, key);
    objc_storeStrong(&v16->_toKey, toKey);
    v16->_faultable = faultable;
  }

  return v16;
}

- (BOOL)isInverseOfRelation:(id)relation
{
  relationCopy = relation;
  v10 = objc_msgSend_fromEntity(self, v8, v9);
  if (v10 == objc_msgSend_toEntity(relationCopy, v11, v12))
  {
    v15 = objc_msgSend_toEntity(self, v13, v14);
    if (v15 == objc_msgSend_fromEntity(relationCopy, v16, v17))
    {
      v24 = objc_msgSend_fromKey(self, v18, v19);
      if (v24 || (objc_msgSend_toKey(relationCopy, v22, v23), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v25 = objc_msgSend_fromKey(self, v22, v23);
        if (!v25)
        {
          isEqualToString = 0;
          goto LABEL_26;
        }

        v3 = v25;
        v4 = objc_msgSend_toKey(relationCopy, v26, v27);
        if (v4)
        {
          v30 = objc_msgSend_fromKey(self, v28, v29);
          v33 = objc_msgSend_toKey(relationCopy, v31, v32);
          if (objc_msgSend_isEqualToString_(v30, v34, v33))
          {
            v56 = v33;
            v57 = v30;
            v35 = 1;
LABEL_16:
            v39 = objc_msgSend_toKey(self, v22, v23);
            if (!v39)
            {
              v55 = objc_msgSend_fromKey(relationCopy, v37, v38);
              if (!v55)
              {
                v55 = 0;
                isEqualToString = 1;
                goto LABEL_30;
              }
            }

            v40 = objc_msgSend_toKey(self, v37, v38);
            if (v40)
            {
              v43 = v40;
              v44 = objc_msgSend_fromKey(relationCopy, v41, v42);
              if (v44)
              {
                v47 = v44;
                objc_msgSend_toKey(self, v45, v46);
                v48 = v54 = v5;
                objc_msgSend_fromKey(relationCopy, v49, v50);
                v51 = v53 = v35;
                isEqualToString = objc_msgSend_isEqualToString_(v48, v52, v51);

                v35 = v53;
                v5 = v54;

                if (!v39)
                {
LABEL_30:

                  if ((v35 & 1) == 0)
                  {
LABEL_26:
                    v20 = isEqualToString;
                    if (!v24)
                    {
LABEL_27:

                      v20 = isEqualToString;
                    }

LABEL_28:

                    goto LABEL_4;
                  }

LABEL_25:

                  goto LABEL_26;
                }

LABEL_24:

                if ((v35 & 1) == 0)
                {
                  goto LABEL_26;
                }

                goto LABEL_25;
              }
            }

            isEqualToString = 0;
            if (!v39)
            {
              goto LABEL_30;
            }

            goto LABEL_24;
          }
        }

        isEqualToString = 0;
        v20 = 0;
        if (!v24)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v35 = 0;
      goto LABEL_16;
    }
  }

  v20 = 0;
LABEL_4:

  return v20;
}

- (BOOL)isEquivalentToRelation:(id)relation
{
  relationCopy = relation;
  v10 = objc_msgSend_fromEntity(self, v8, v9);
  if (v10 == objc_msgSend_fromEntity(relationCopy, v11, v12))
  {
    v15 = objc_msgSend_toEntity(self, v13, v14);
    if (v15 == objc_msgSend_toEntity(relationCopy, v16, v17))
    {
      v24 = objc_msgSend_fromKey(self, v18, v19);
      if (v24 || (objc_msgSend_fromKey(relationCopy, v22, v23), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v25 = objc_msgSend_fromKey(self, v22, v23);
        if (!v25)
        {
          isEqualToString = 0;
          goto LABEL_26;
        }

        v3 = v25;
        v4 = objc_msgSend_fromKey(relationCopy, v26, v27);
        if (v4)
        {
          v30 = objc_msgSend_fromKey(self, v28, v29);
          v33 = objc_msgSend_fromKey(relationCopy, v31, v32);
          if (objc_msgSend_isEqualToString_(v30, v34, v33))
          {
            v56 = v33;
            v57 = v30;
            v35 = 1;
LABEL_16:
            v39 = objc_msgSend_toKey(self, v22, v23);
            if (!v39)
            {
              v55 = objc_msgSend_toKey(relationCopy, v37, v38);
              if (!v55)
              {
                v55 = 0;
                isEqualToString = 1;
                goto LABEL_30;
              }
            }

            v40 = objc_msgSend_toKey(self, v37, v38);
            if (v40)
            {
              v43 = v40;
              v44 = objc_msgSend_toKey(relationCopy, v41, v42);
              if (v44)
              {
                v47 = v44;
                objc_msgSend_toKey(self, v45, v46);
                v48 = v54 = v5;
                objc_msgSend_toKey(relationCopy, v49, v50);
                v51 = v53 = v35;
                isEqualToString = objc_msgSend_isEqualToString_(v48, v52, v51);

                v35 = v53;
                v5 = v54;

                if (!v39)
                {
LABEL_30:

                  if ((v35 & 1) == 0)
                  {
LABEL_26:
                    v20 = isEqualToString;
                    if (!v24)
                    {
LABEL_27:

                      v20 = isEqualToString;
                    }

LABEL_28:

                    goto LABEL_4;
                  }

LABEL_25:

                  goto LABEL_26;
                }

LABEL_24:

                if ((v35 & 1) == 0)
                {
                  goto LABEL_26;
                }

                goto LABEL_25;
              }
            }

            isEqualToString = 0;
            if (!v39)
            {
              goto LABEL_30;
            }

            goto LABEL_24;
          }
        }

        isEqualToString = 0;
        v20 = 0;
        if (!v24)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v35 = 0;
      goto LABEL_16;
    }
  }

  v20 = 0;
LABEL_4:

  return v20;
}

- (id)description
{
  v27.receiver = self;
  v27.super_class = CLSRelation;
  v3 = [(CLSRelation *)&v27 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  objc_msgSend_appendString_(v6, v7, @"(fromEntity: ");
  v10 = objc_msgSend_fromEntity(self, v8, v9);
  v11 = NSStringFromClass(v10);
  objc_msgSend_appendString_(v6, v12, v11);

  objc_msgSend_appendString_(v6, v13, @" (toEntity: "));
  v16 = objc_msgSend_toEntity(self, v14, v15);
  v17 = NSStringFromClass(v16);
  objc_msgSend_appendString_(v6, v18, v17);

  v21 = objc_msgSend_fromKey(self, v19, v20);
  v24 = objc_msgSend_toKey(self, v22, v23);
  objc_msgSend_appendFormat_(v6, v25, @" (on: fromEntity.%@ == toEntity.%@)"), v21, v24);

  return v6;
}

@end