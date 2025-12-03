@interface CKGraphNode
- (BOOL)isEqual:(id)equal;
- (CKGraphNode)init;
- (NSSecureCoding)itemID;
- (id)CKPropertiesDescription;
- (id)_initInternal;
- (unint64_t)hash;
- (unint64_t)indegree;
@end

@implementation CKGraphNode

- (CKGraphNode)init
{
  v2 = [CKException alloc];
  v4 = objc_msgSend_initWithName_format_(v2, v3, *MEMORY[0x1E695D940], @"You must instantiate one of the CKGraphNode subclasses");
  objc_exception_throw(v4);
}

- (id)_initInternal
{
  v8.receiver = self;
  v8.super_class = CKGraphNode;
  v2 = [(CKGraphNode *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    edges = v2->_edges;
    v2->_edges = v3;

    v5 = objc_opt_new();
    indegrees = v2->_indegrees;
    v2->_indegrees = v5;
  }

  return v2;
}

- (unint64_t)indegree
{
  v3 = objc_msgSend_indegrees(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (NSSecureCoding)itemID
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  v6 = NSStringFromSelector(a2);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v9, a2, self, @"CKRecordGraph.m", 40, @"%@ should be overridden by the subclass (%@)", v6, v8);

  return 0;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_itemID(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_itemID(self, v6, v7);
      v11 = objc_msgSend_itemID(v5, v9, v10);

      isEqual = objc_msgSend_isEqual_(v8, v12, v11);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_indegree(self, a2, v2);
  v8 = objc_msgSend_edges(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);
  v14 = objc_msgSend_itemID(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v4, v15, @"indegree=%d, edges=%d, itemID=%@", v5, v11, v14);

  return v16;
}

@end