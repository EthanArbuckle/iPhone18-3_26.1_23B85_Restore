@interface _WKTextManipulationItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextManipulationItem:(id)item includingContentEquality:(BOOL)equality;
- (_WKTextManipulationItem)initWithIdentifier:(id)identifier tokens:(id)tokens;
- (_WKTextManipulationItem)initWithIdentifier:(id)identifier tokens:(id)tokens isSubframe:(BOOL)subframe isCrossSiteSubframe:(BOOL)siteSubframe;
- (id).cxx_construct;
- (id)_descriptionPreservingPrivacy:(BOOL)privacy;
@end

@implementation _WKTextManipulationItem

- (_WKTextManipulationItem)initWithIdentifier:(id)identifier tokens:(id)tokens
{
  v12.receiver = self;
  v12.super_class = _WKTextManipulationItem;
  v6 = [(_WKTextManipulationItem *)&v12 init];
  if (v6)
  {
    if (identifier)
    {
      identifierCopy = identifier;
    }

    m_ptr = v6->_identifier.m_ptr;
    v6->_identifier.m_ptr = identifier;
    if (m_ptr)
    {
    }

    if (tokens)
    {
      tokensCopy = tokens;
    }

    v10 = v6->_tokens.m_ptr;
    v6->_tokens.m_ptr = tokens;
    if (v10)
    {
    }
  }

  return v6;
}

- (_WKTextManipulationItem)initWithIdentifier:(id)identifier tokens:(id)tokens isSubframe:(BOOL)subframe isCrossSiteSubframe:(BOOL)siteSubframe
{
  v16.receiver = self;
  v16.super_class = _WKTextManipulationItem;
  v10 = [(_WKTextManipulationItem *)&v16 init];
  if (v10)
  {
    if (identifier)
    {
      identifierCopy = identifier;
    }

    m_ptr = v10->_identifier.m_ptr;
    v10->_identifier.m_ptr = identifier;
    if (m_ptr)
    {
    }

    if (tokens)
    {
      tokensCopy = tokens;
    }

    v14 = v10->_tokens.m_ptr;
    v10->_tokens.m_ptr = tokens;
    if (v14)
    {
    }

    v10->_isSubframe = subframe;
    v10->_isCrossSiteSubframe = siteSubframe;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(_WKTextManipulationItem *)self isEqualToTextManipulationItem:equal includingContentEquality:1];
}

- (BOOL)isEqualToTextManipulationItem:(id)item includingContentEquality:(BOOL)equality
{
  itemCopy = item;
  if (item)
  {
    identifier = [(_WKTextManipulationItem *)self identifier];
    if ((identifier == [itemCopy identifier] || -[NSString isEqualToString:](-[_WKTextManipulationItem identifier](self, "identifier"), "isEqualToString:", objc_msgSend(itemCopy, "identifier"))) && (v8 = -[NSArray count](-[_WKTextManipulationItem tokens](self, "tokens"), "count"), v8 == objc_msgSend(objc_msgSend(itemCopy, "tokens"), "count")))
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 1;
      v9 = [(NSArray *)[(_WKTextManipulationItem *)self tokens] count];
      v10 = [objc_msgSend(itemCopy "tokens")];
      tokens = [(_WKTextManipulationItem *)self tokens];
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
      equalityCopy = equality;
      v15[4] = itemCopy;
      v15[5] = &v17;
      [(NSArray *)tokens enumerateObjectsAtIndexes:v13 options:0 usingBlock:v15];
      LOBYTE(itemCopy) = *(v18 + 24);
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      LOBYTE(itemCopy) = 0;
    }
  }

  return itemCopy & 1;
}

- (id)_descriptionPreservingPrivacy:(BOOL)privacy
{
  array = [MEMORY[0x1E695DF70] array];
  tokens = [(_WKTextManipulationItem *)self tokens];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57___WKTextManipulationItem__descriptionPreservingPrivacy___block_invoke;
  v10[3] = &unk_1E7631AB8;
  privacyCopy = privacy;
  v10[4] = array;
  [(NSArray *)tokens enumerateObjectsUsingBlock:v10];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[\n\t%@\n]", objc_msgSend(array, "componentsJoinedByString:", @", \n\t")];
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