@interface CTNetworkSelectionInfo
- (CTNetworkSelectionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTNetworkSelectionInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", selectionState=%s", CTNetworkSelectionStateAsString(-[CTNetworkSelectionInfo selectionState](self, "selectionState"))];
  selectionMode = [(CTNetworkSelectionInfo *)self selectionMode];
  v5 = "CTNetworkSelectionModeDisabled";
  if (selectionMode == 2)
  {
    v5 = "CTNetworkSelectionModeManual";
  }

  if (selectionMode == 1)
  {
    v5 = "CTNetworkSelectionModeAutomatic";
  }

  [v3 appendFormat:@", selectionMode=%s", v5];
  selection = [(CTNetworkSelectionInfo *)self selection];
  [v3 appendFormat:@", selection=%@", selection];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSelectionState:{-[CTNetworkSelectionInfo selectionState](self, "selectionState")}];
  [v4 setSelectionMode:{-[CTNetworkSelectionInfo selectionMode](self, "selectionMode")}];
  selection = [(CTNetworkSelectionInfo *)self selection];
  v6 = [selection copy];
  [v4 setSelection:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[CTNetworkSelectionInfo selectionMode](self, "selectionMode")}];
  [coderCopy encodeObject:v6 forKey:@"selection_mode"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNetworkSelectionInfo selectionState](self, "selectionState")}];
  [coderCopy encodeObject:v7 forKey:@"selection_state"];

  selection = [(CTNetworkSelectionInfo *)self selection];
  [coderCopy encodeObject:selection forKey:@"selection"];
}

- (CTNetworkSelectionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTNetworkSelectionInfo;
  v5 = [(CTNetworkSelectionInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selection_mode"];
    v5->_selectionMode = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selection_state"];
    v5->_selectionState = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    selection = v5->_selection;
    v5->_selection = v8;
  }

  return v5;
}

@end