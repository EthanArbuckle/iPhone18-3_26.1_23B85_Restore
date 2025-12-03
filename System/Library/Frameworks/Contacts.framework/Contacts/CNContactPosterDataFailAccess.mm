@interface CNContactPosterDataFailAccess
- (BOOL)executeCreateRequest:(id)request error:(id *)error;
- (BOOL)executeDeleteRequest:(id)request error:(id *)error;
- (BOOL)executeUpdateRequest:(id)request error:(id *)error;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (int64_t)countForFetchRequest:(id)request error:(id *)error;
@end

@implementation CNContactPosterDataFailAccess

- (id)executeFetchRequest:(id)request error:(id *)error
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (int64_t)countForFetchRequest:(id)request error:(id *)error
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)executeCreateRequest:(id)request error:(id *)error
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (BOOL)executeDeleteRequest:(id)request error:(id *)error
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (BOOL)executeUpdateRequest:(id)request error:(id *)error
{
  v5 = [CNErrorFactory errorWithCode:1017];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

@end