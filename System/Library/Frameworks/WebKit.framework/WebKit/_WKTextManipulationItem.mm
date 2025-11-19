@interface _WKTextManipulationItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextManipulationItem:(id)a3 includingContentEquality:(BOOL)a4;
- (_WKTextManipulationItem)initWithIdentifier:(id)a3 tokens:(id)a4;
- (_WKTextManipulationItem)initWithIdentifier:(id)a3 tokens:(id)a4 isSubframe:(BOOL)a5 isCrossSiteSubframe:(BOOL)a6;
- (id).cxx_construct;
- (id)_descriptionPreservingPrivacy:(BOOL)a3;
@end

@implementation _WKTextManipulationItem

- (_WKTextManipulationItem)initWithIdentifier:(id)a3 tokens:(id)a4
{
  v12.receiver = self;
  v12.super_class = _WKTextManipulationItem;
  v6 = [(_WKTextManipulationItem *)&v12 init];
  if (v6)
  {
    if (a3)
    {
      v7 = a3;
    }

    m_ptr = v6->_identifier.m_ptr;
    v6->_identifier.m_ptr = a3;
    if (m_ptr)
    {
    }

    if (a4)
    {
      v9 = a4;
    }

    v10 = v6->_tokens.m_ptr;
    v6->_tokens.m_ptr = a4;
    if (v10)
    {
    }
  }

  return v6;
}

- (_WKTextManipulationItem)initWithIdentifier:(id)a3 tokens:(id)a4 isSubframe:(BOOL)a5 isCrossSiteSubframe:(BOOL)a6
{
  v16.receiver = self;
  v16.super_class = _WKTextManipulationItem;
  v10 = [(_WKTextManipulationItem *)&v16 init];
  if (v10)
  {
    if (a3)
    {
      v11 = a3;
    }

    m_ptr = v10->_identifier.m_ptr;
    v10->_identifier.m_ptr = a3;
    if (m_ptr)
    {
    }

    if (a4)
    {
      v13 = a4;
    }

    v14 = v10->_tokens.m_ptr;
    v10->_tokens.m_ptr = a4;
    if (v14)
    {
    }

    v10->_isSubframe = a5;
    v10->_isCrossSiteSubframe = a6;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(_WKTextManipulationItem *)self isEqualToTextManipulationItem:a3 includingContentEquality:1];
}

- (BOOL)isEqualToTextManipulationItem:(id)a3 includingContentEquality:(BOOL)a4
{
  v4 = a3;
  if (a3)
  {
    v7 = [(_WKTextManipulationItem *)self identifier];
    if ((v7 == [v4 identifier] || -[NSString isEqualToString:](-[_WKTextManipulationItem identifier](self, "identifier"), "isEqualToString:", objc_msgSend(v4, "identifier"))) && (v8 = -[NSArray count](-[_WKTextManipulationItem tokens](self, "tokens"), "count"), v8 == objc_msgSend(objc_msgSend(v4, "tokens"), "count")))
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 1;
      v9 = [(NSArray *)[(_WKTextManipulationItem *)self tokens] count];
      v10 = [objc_msgSend(v4 "tokens")];
      v11 = [(_WKTextManipulationItem *)self tokens];
      if (v10 >= v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10;
      }

      v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v12}];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __82___WKTextManipulationItem_isEqualToTextManipulationItem_includingContentEquality___block_invoke;
      v15[3] = &unk_1E7631A90;
      v16 = a4;
      v15[4] = v4;
      v15[5] = &v17;
      [(NSArray *)v11 enumerateObjectsAtIndexes:v13 options:0 usingBlock:v15];
      LOBYTE(v4) = *(v18 + 24);
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (id)_descriptionPreservingPrivacy:(BOOL)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(_WKTextManipulationItem *)self tokens];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57___WKTextManipulationItem__descriptionPreservingPrivacy___block_invoke;
  v10[3] = &unk_1E7631AB8;
  v11 = a3;
  v10[4] = v5;
  [(NSArray *)v6 enumerateObjectsUsingBlock:v10];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[\n\t%@\n]", objc_msgSend(v5, "componentsJoinedByString:", @", \n\t")];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p; identifier = %@ tokens = %@>", objc_opt_class(), self, -[_WKTextManipulationItem identifier](self, "identifier"), v7];
  if (v7)
  {
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end