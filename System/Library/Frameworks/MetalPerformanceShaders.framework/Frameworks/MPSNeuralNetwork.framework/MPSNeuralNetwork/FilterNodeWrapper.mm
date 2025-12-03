@interface FilterNodeWrapper
+ (id)wrapperWithFilterNode:(void *)node;
- (FilterNodeWrapper)initWithCoder:(id)coder;
- (FilterNodeWrapper)initWithFilterNode:(void *)node;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FilterNodeWrapper

+ (id)wrapperWithFilterNode:(void *)node
{
  v4 = [FilterNodeWrapper alloc];
  v11 = objc_msgSend_initWithFilterNode_(v4, v5, node, v6, v7, v8, v9, v10);

  return v11;
}

- (FilterNodeWrapper)initWithFilterNode:(void *)node
{
  v5.receiver = self;
  v5.super_class = FilterNodeWrapper;
  result = [(FilterNodeWrapper *)&v5 init];
  if (result)
  {
    result->node = node;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = 0;
  v5 = (*(*self->node + 248))(self->node, &v23);
  objc_msgSend_encodeBytes_length_forKey_(coder, v6, v5, v23, @"Data", v7, v8, v9);
  free(v5);
  node = self->node;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_encodeObject_forKey_(coder, v13, v12, @"ot", v14, v15, v16, v17);
  objc_msgSend_encodeObject_forKey_(coder, v18, node[13], @"oo", v19, v20, v21, v22);
}

- (FilterNodeWrapper)initWithCoder:(id)coder
{
  v36.receiver = self;
  v36.super_class = FilterNodeWrapper;
  v9 = [(FilterNodeWrapper *)&v36 init];
  if (!v9)
  {
    return v9;
  }

  v35 = 0;
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v4, @"Data", &v35, v5, v6, v7, v8);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"ot", v14, v15, v16, v17);
  if (v18)
  {
    v18 = NSClassFromString(v18);
    if (v18)
    {
      v19 = v18;
      v20 = objc_opt_class();
      if (!objc_msgSend_isSubclassOfClass_(v19, v21, v20, v22, v23, v24, v25, v26))
      {
        v34 = sub_239D38B10(0, v11, v35);
        v9->node = v34;
        if (v34)
        {
          return v9;
        }

        goto LABEL_10;
      }

      v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v27, v19, @"oo", v28, v29, v30, v31);
    }
  }

  v32 = sub_239D38B10(v18, v11, v35);
  v9->node = v32;
  if (v32)
  {
    return v9;
  }

LABEL_10:

  return 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = FilterNodeWrapper;
  [(FilterNodeWrapper *)&v2 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = FilterNodeWrapper;
  v10 = [(FilterNodeWrapper *)&v14 debugDescription];
  node = self->node;
  if (node)
  {
    v12 = sub_239C13204(node);
  }

  else
  {
    v12 = @"<missing MPSNNFilterNode>";
  }

  return objc_msgSend_stringWithFormat_(v3, v4, @"%@\n\t%@\n", v5, v6, v7, v8, v9, v10, v12);
}

@end