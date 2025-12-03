@interface HDClinicalIngestionGatewayFeatureOperation
- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)task account:(id)account gateway:(id)gateway feature:(id)feature queryMode:(int64_t)mode;
- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation;
- (id)debugDescription;
@end

@implementation HDClinicalIngestionGatewayFeatureOperation

- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation
{
  v6 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v6, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionGatewayFeatureOperation)initWithTask:(id)task account:(id)account gateway:(id)gateway feature:(id)feature queryMode:(int64_t)mode
{
  gatewayCopy = gateway;
  featureCopy = feature;
  v20.receiver = self;
  v20.super_class = HDClinicalIngestionGatewayFeatureOperation;
  v14 = [(HDClinicalIngestionPerAccountOperation *)&v20 initWithTask:task account:account nextOperation:0];
  if (v14)
  {
    v15 = [gatewayCopy copy];
    gateway = v14->_gateway;
    v14->_gateway = v15;

    v17 = [featureCopy copy];
    feature = v14->_feature;
    v14->_feature = v17;

    v14->_queryMode = mode;
  }

  return v14;
}

- (id)debugDescription
{
  v6.receiver = self;
  v6.super_class = HDClinicalIngestionGatewayFeatureOperation;
  v2 = [(HDClinicalIngestionPerAccountOperation *)&v6 debugDescription];
  featureName = [objc_opt_class() featureName];
  v4 = [NSString stringWithFormat:@"%@ feature:%@", v2, featureName];

  return v4;
}

@end