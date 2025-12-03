@interface NTKCollieCustomData
+ (BOOL)dataRepresentation:(id)representation equalsCustomData:(id)data;
+ (BOOL)validateCustomData:(id)data forDevice:(id)device error:(id *)error;
+ (id)_dictionaryFromCustomData:(id)data;
+ (id)customDataForDataRepresentation:(id)representation;
+ (id)dataRepresentationFromCustomData:(id)data;
@end

@implementation NTKCollieCustomData

+ (id)customDataForDataRepresentation:(id)representation
{
  v3 = [NSJSONSerialization JSONObjectWithData:representation options:1 error:0];
  v7 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v7];
  v5 = [[NSString alloc] initWithData:v4 encoding:4];

  return v5;
}

+ (id)_dictionaryFromCustomData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [dataCopy dataUsingEncoding:4];
    v5 = [NSJSONSerialization JSONObjectWithData:v4 options:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)dataRepresentationFromCustomData:(id)data
{
  v3 = [self _dictionaryFromCustomData:data];
  if (v3)
  {
    v6 = 0;
    v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)dataRepresentation:(id)representation equalsCustomData:(id)data
{
  representationCopy = representation;
  v7 = [self dataRepresentationFromCustomData:data];
  LOBYTE(self) = [v7 isEqualToData:representationCopy];

  return self;
}

+ (BOOL)validateCustomData:(id)data forDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v9 = [self dataRepresentationFromCustomData:data];
  LOBYTE(error) = [NTKCollieStyleEditOptionAvatarRecordCache validateMemojiDataRepresentation:v9 forDevice:deviceCopy error:error];

  return error;
}

@end