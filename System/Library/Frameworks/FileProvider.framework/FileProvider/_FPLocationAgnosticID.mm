@interface _FPLocationAgnosticID
- (BOOL)isEqual:(id)equal;
- (_FPLocationAgnosticID)initWithItem:(id)item;
- (_FPLocationAgnosticID)initWithItemID:(id)d;
- (id)description;
- (unint64_t)hash;
@end

@implementation _FPLocationAgnosticID

- (_FPLocationAgnosticID)initWithItemID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = _FPLocationAgnosticID;
  v6 = [(_FPLocationAgnosticID *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemID, d);
  }

  return v7;
}

- (_FPLocationAgnosticID)initWithItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = _FPLocationAgnosticID;
  v5 = [(_FPLocationAgnosticID *)&v11 init];
  if (v5)
  {
    itemID = [itemCopy itemID];
    itemID = v5->_itemID;
    v5->_itemID = itemID;

    formerItemID = [itemCopy formerItemID];
    alternateID = v5->_alternateID;
    v5->_alternateID = formerItemID;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_12;
  }

  if (equalCopy == self)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(FPItemID *)self->_itemID isEqual:v5])
    {
      v6 = [(FPItemID *)self->_alternateID isEqual:v5];
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v7 = v5;
  v6 = [(FPItemID *)self->_itemID isEqual:v7->_itemID]|| [(FPItemID *)self->_itemID isEqual:v7->_alternateID]|| [(FPItemID *)self->_alternateID isEqual:v7->_itemID]|| [(FPItemID *)self->_alternateID isEqual:v7->_alternateID];

LABEL_13:
  return v6;
}

- (unint64_t)hash
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This object is not hashable"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[_FPLocationAgnosticID hash]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/fileproviderd/action operation engine/FPActionOperationLocator.m", 365, [v2 UTF8String]);
}

- (id)description
{
  alternateID = self->_alternateID;
  if (alternateID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ alt:%@", self->_itemID, alternateID];
  }

  else
  {
    [(FPItemID *)self->_itemID description];
  }
  v3 = ;

  return v3;
}

@end