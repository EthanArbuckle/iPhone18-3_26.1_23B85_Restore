@interface CTNetworkSelectionInfo
- (CTNetworkSelectionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTNetworkSelectionInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", selectionState=%s", CTNetworkSelectionStateAsString(-[CTNetworkSelectionInfo selectionState](self, "selectionState"))];
  v4 = [(CTNetworkSelectionInfo *)self selectionMode];
  v5 = "CTNetworkSelectionModeDisabled";
  if (v4 == 2)
  {
    v5 = "CTNetworkSelectionModeManual";
  }

  if (v4 == 1)
  {
    v5 = "CTNetworkSelectionModeAutomatic";
  }

  [v3 appendFormat:@", selectionMode=%s", v5];
  v6 = [(CTNetworkSelectionInfo *)self selection];
  [v3 appendFormat:@", selection=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSelectionState:{-[CTNetworkSelectionInfo selectionState](self, "selectionState")}];
  [v4 setSelectionMode:{-[CTNetworkSelectionInfo selectionMode](self, "selectionMode")}];
  v5 = [(CTNetworkSelectionInfo *)self selection];
  v6 = [v5 copy];
  [v4 setSelection:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[CTNetworkSelectionInfo selectionMode](self, "selectionMode")}];
  [v5 encodeObject:v6 forKey:@"selection_mode"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNetworkSelectionInfo selectionState](self, "selectionState")}];
  [v5 encodeObject:v7 forKey:@"selection_state"];

  v8 = [(CTNetworkSelectionInfo *)self selection];
  [v5 encodeObject:v8 forKey:@"selection"];
}

- (CTNetworkSelectionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTNetworkSelectionInfo;
  v5 = [(CTNetworkSelectionInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selection_mode"];
    v5->_selectionMode = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selection_state"];
    v5->_selectionState = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    selection = v5->_selection;
    v5->_selection = v8;
  }

  return v5;
}

@end