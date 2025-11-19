@interface HDCodableClinicalGateway
- (id)FHIRVersionString;
- (id)FHIRVersionStringWithError:(id *)a3;
- (id)_stringValueForContentKey:(id)a3 error:(id *)a4;
- (id)countryCode;
- (id)countryCodeWithError:(id *)a3;
@end

@implementation HDCodableClinicalGateway

- (id)_stringValueForContentKey:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (![v7 length])
  {
    sub_A3768(a2, self);
  }

  v8 = [(HDCodableClinicalGateway *)self rawContent];

  if (!v8)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v9 = [(HDCodableClinicalGateway *)self rawContent];
  v16 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v16];
  v11 = v16;

  if (v10)
  {

    objc_opt_class();
    v12 = HKSafeObject();
    v11 = 0;
    if (v12)
    {
      v13 = [v12 objectForKeyedSubscript:v7];
      if (v13)
      {
        objc_opt_class();
        v14 = HKSafeObject();
LABEL_12:

        goto LABEL_13;
      }
    }

    else
      v13 = {;
      [NSError hk_assignError:a4 code:100 description:v13 underlyingError:v11];
    }

    v14 = 0;
    goto LABEL_12;
  }
  v12 = ;
  [NSError hk_assignError:a4 code:100 description:v12 underlyingError:v11];
  v14 = 0;
LABEL_13:

LABEL_14:

  return v14;
}

- (id)countryCodeWithError:(id *)a3
{
  v10 = 0;
  v4 = [(HDCodableClinicalGateway *)self _stringValueForContentKey:HDClinicalGatewayContentCountryKey error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    if (a3)
    {
      v8 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v4;
}

- (id)countryCode
{
  v13 = 0;
  v3 = [(HDCodableClinicalGateway *)self countryCodeWithError:&v13];
  v4 = v13;
  v5 = v3;
  if (!v3)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (v4)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A37E4(v6, self, v4);
      }

      v7 = &HDClinicalGatewayUnknownCountry;
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v6;
        v9 = objc_opt_class();
        *buf = 138543362;
        v15 = v9;
        v10 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ no country information on rawContent, returning default country", buf, 0xCu);
      }

      v7 = &HDClinicalGatewayDefaultCountry;
    }

    v5 = *v7;
  }

  v11 = v5;

  return v11;
}

- (id)FHIRVersionStringWithError:(id *)a3
{
  v10 = 0;
  v4 = [(HDCodableClinicalGateway *)self _stringValueForContentKey:HDClinicalGatewayContentFHIRVersionKey error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    if (a3)
    {
      v8 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v4;
}

- (id)FHIRVersionString
{
  v12 = 0;
  v3 = [(HDCodableClinicalGateway *)self FHIRVersionStringWithError:&v12];
  v4 = v12;
  v5 = v3;
  if (!v3)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (v4)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A37E4(v6, self, v4);
      }
    }

    else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      *buf = 138543362;
      v14 = v8;
      v9 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ no FHIR version information on rawContent, returning default version", buf, 0xCu);
    }

    v5 = @"1.0.2";
  }

  v10 = v5;

  return v10;
}

@end