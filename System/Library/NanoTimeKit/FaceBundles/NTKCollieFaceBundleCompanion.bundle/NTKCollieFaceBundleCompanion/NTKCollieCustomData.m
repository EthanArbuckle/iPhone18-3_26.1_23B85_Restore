@interface NTKCollieCustomData
+ (BOOL)dataRepresentation:(id)a3 equalsCustomData:(id)a4;
+ (BOOL)validateCustomData:(id)a3 forDevice:(id)a4 error:(id *)a5;
+ (id)_dictionaryFromCustomData:(id)a3;
+ (id)customDataForDataRepresentation:(id)a3;
+ (id)dataRepresentationFromCustomData:(id)a3;
@end

@implementation NTKCollieCustomData

+ (id)customDataForDataRepresentation:(id)a3
{
  v3 = [NSJSONSerialization JSONObjectWithData:a3 options:1 error:0];
  v7 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v7];
  v5 = [[NSString alloc] initWithData:v4 encoding:4];

  return v5;
}

+ (id)_dictionaryFromCustomData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 dataUsingEncoding:4];
    v5 = [NSJSONSerialization JSONObjectWithData:v4 options:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)dataRepresentationFromCustomData:(id)a3
{
  v3 = [a1 _dictionaryFromCustomData:a3];
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

+ (BOOL)dataRepresentation:(id)a3 equalsCustomData:(id)a4
{
  v6 = a3;
  v7 = [a1 dataRepresentationFromCustomData:a4];
  LOBYTE(a1) = [v7 isEqualToData:v6];

  return a1;
}

+ (BOOL)validateCustomData:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 dataRepresentationFromCustomData:a3];
  LOBYTE(a5) = [NTKCollieStyleEditOptionAvatarRecordCache validateMemojiDataRepresentation:v9 forDevice:v8 error:a5];

  return a5;
}

@end