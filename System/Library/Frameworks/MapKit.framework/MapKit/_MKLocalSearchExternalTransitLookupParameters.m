@interface _MKLocalSearchExternalTransitLookupParameters
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _MKLocalSearchExternalTransitLookupParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSArray *)self->_stationCodes copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_sourceIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSDate *)self->_transactionDate copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(CLLocation *)self->_transactionLocation copy];
  v12 = v4[4];
  v4[4] = v11;

  return v4;
}

@end