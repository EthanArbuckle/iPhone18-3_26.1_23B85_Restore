@interface CNContactPosterDataFailAccess
- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4;
- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation CNContactPosterDataFailAccess

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

@end