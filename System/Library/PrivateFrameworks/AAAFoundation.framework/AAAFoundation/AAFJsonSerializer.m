@interface AAFJsonSerializer
- (id)_dataFromDictionary:(id)a3 error:(id *)a4;
- (id)mediaTypes;
@end

@implementation AAFJsonSerializer

- (id)mediaTypes
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"application/json";
  v5[1] = @"text/x-json";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_dataFromDictionary:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v5])
  {
    a4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:a4];
  }

  else if (a4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"JSON cannot be formed from dictionary: %@", v5];
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a4 = [v7 errorWithDomain:@"AAFSerializationError" code:-701 userInfo:v8];

    a4 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return a4;
}

@end