@interface ASDInstallManifestRequestResponse
- (ASDInstallManifestRequestResponse)initWithCoder:(id)coder;
- (ASDInstallManifestRequestResponse)initWithResults:(id)results;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDInstallManifestRequestResponse

- (ASDInstallManifestRequestResponse)initWithResults:(id)results
{
  resultsCopy = results;
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:resultsCopy copyItems:1];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__ASDInstallManifestRequestResponse_initWithResults___block_invoke;
  v11[3] = &unk_1E7CDCA28;
  v11[4] = &v12;
  [v5 enumerateObjectsUsingBlock:v11];
  if (*(v13 + 24) != 1)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDErrorDomain" code:928 userInfo:0];
    v9.receiver = self;
    v9.super_class = ASDInstallManifestRequestResponse;
    v6 = [(ASDRequestResponse *)&v9 initWithError:v8];

    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10.receiver = self;
  v10.super_class = ASDInstallManifestRequestResponse;
  v6 = [(ASDRequestResponse *)&v10 init];
  if (v6)
  {
LABEL_3:
    objc_storeStrong(&v6->_results, v5);
  }

LABEL_4:
  _Block_object_dispose(&v12, 8);

  return v6;
}

uint64_t __53__ASDInstallManifestRequestResponse_initWithResults___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = result;
  v6 = *(*(result + 32) + 8);
  if (*(v6 + 24) == 1)
  {
    result = [a2 status];
    v7 = result == 2;
    v6 = *(*(v5 + 32) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
  *a4 = *(*(*(v5 + 32) + 8) + 24) ^ 1;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = ASDInstallManifestRequestResponse;
  v4 = [(ASDRequestResponse *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_results);
  return v4;
}

- (ASDInstallManifestRequestResponse)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"results"];

  v9 = [(ASDInstallManifestRequestResponse *)self initWithResults:v8];
  return v9;
}

@end