@interface HDClinicalIngestionGatewayFeatureOperation
- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)a3 account:(id)a4 gateway:(id)a5 feature:(id)a6 queryMode:(int64_t)a7;
- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)a3 account:(id)a4 nextOperation:(id)a5;
- (id)debugDescription;
@end

@implementation HDClinicalIngestionGatewayFeatureOperation

- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)a3 account:(id)a4 nextOperation:(id)a5
{
  v6 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v6, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)a3 account:(id)a4 gateway:(id)a5 feature:(id)a6 queryMode:(int64_t)a7
{
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HDClinicalIngestionGatewayFeatureOperation;
  v14 = [(HDClinicalIngestionPerAccountOperation *)&v20 initWithTask:a3 account:a4 nextOperation:0];
  if (v14)
  {
    v15 = [v12 copy];
    gateway = v14->_gateway;
    v14->_gateway = v15;

    v17 = [v13 copy];
    feature = v14->_feature;
    v14->_feature = v17;

    v14->_queryMode = a7;
  }

  return v14;
}

- (id)debugDescription
{
  v6.receiver = self;
  v6.super_class = HDClinicalIngestionGatewayFeatureOperation;
  v2 = [(HDClinicalIngestionPerAccountOperation *)&v6 debugDescription];
  v3 = [objc_opt_class() featureName];
  v4 = [NSString stringWithFormat:@"%@ feature:%@", v2, v3];

  return v4;
}

@end