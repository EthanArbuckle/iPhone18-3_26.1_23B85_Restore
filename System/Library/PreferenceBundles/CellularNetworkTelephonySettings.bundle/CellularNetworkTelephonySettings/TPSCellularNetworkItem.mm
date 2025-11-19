@interface TPSCellularNetworkItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCellularNetworkItem:(id)a3;
- (TPSCellularNetworkItem)init;
- (TPSCellularNetworkItem)initWithIdentifier:(id)a3 name:(id)a4 localizedName:(id)a5;
- (unint64_t)hash;
@end

@implementation TPSCellularNetworkItem

- (TPSCellularNetworkItem)init
{
  [(TPSCellularNetworkItem *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCellularNetworkItem)initWithIdentifier:(id)a3 name:(id)a4 localizedName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = TPSCellularNetworkItem;
  v11 = [(TPSCellularNetworkItem *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [v10 copy];
    localizedName = v11->_localizedName;
    v11->_localizedName = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TPSCellularNetworkItem *)self isEqualToCellularNetworkItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TPSCellularNetworkItem *)self identifier];
  v4 = [v3 hash];
  v5 = [(TPSCellularNetworkItem *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(TPSCellularNetworkItem *)self localizedName];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToCellularNetworkItem:(id)a3
{
  v4 = a3;
  v5 = [(TPSCellularNetworkItem *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(TPSCellularNetworkItem *)self name];
    v8 = [v4 name];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(TPSCellularNetworkItem *)self localizedName];
      v10 = [v4 localizedName];
      v11 = [v9 isEqualToString:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end