@interface DemotedApplication
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DemotedApplication

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 6) = self->_accountID;
    v7 = [(NSString *)self->_bundleID copyWithZone:a3];
    objc_setProperty_nonatomic_copy(v6, v8, v7, 8);

    *(v6 + 7) = self->_downloaderID;
    *(v6 + 2) = self->_externalVersionID;
    *(v6 + 8) = self->_familyID;
    *(v6 + 3) = self->_itemID;
    *(v6 + 72) = *&self->_purchaserID;
    *(v6 + 4) = self->_storeFrontID;
    v9 = [(NSString *)self->_vendorID copyWithZone:a3];
    objc_setProperty_nonatomic_copy(v6, v10, v9, 40);
  }

  else
  {

    v9 = [(NSString *)self->_vendorID copyWithZone:a3];
  }

  return v6;
}

@end