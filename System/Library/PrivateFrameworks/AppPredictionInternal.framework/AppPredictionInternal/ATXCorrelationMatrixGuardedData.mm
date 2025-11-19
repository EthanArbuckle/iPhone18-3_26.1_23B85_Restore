@interface ATXCorrelationMatrixGuardedData
- (ATXCorrelationMatrixGuardedData)init;
- (ATXCorrelationMatrixGuardedData)initWithCorrelationMatrix:(id)a3 locationTotals:(id)a4;
@end

@implementation ATXCorrelationMatrixGuardedData

- (ATXCorrelationMatrixGuardedData)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXCorrelationMatrixGuardedData *)self initWithCorrelationMatrix:v3 locationTotals:v4];

  return v5;
}

- (ATXCorrelationMatrixGuardedData)initWithCorrelationMatrix:(id)a3 locationTotals:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ATXCorrelationMatrixGuardedData;
  v9 = [(ATXCorrelationMatrixGuardedData *)&v16 init];
  v10 = v9;
  if (v9)
  {
    if (v7 && v8)
    {
      objc_storeStrong(&v9->_correlationMatrix, a3);
      v11 = v8;
      v8 = v11;
    }

    else
    {

      v12 = objc_opt_new();
      correlationMatrix = v10->_correlationMatrix;
      v10->_correlationMatrix = v12;

      v11 = objc_opt_new();
      v7 = 0;
      v8 = 0;
    }

    locationTotals = v10->_locationTotals;
    v10->_locationTotals = v11;
  }

  return v10;
}

@end