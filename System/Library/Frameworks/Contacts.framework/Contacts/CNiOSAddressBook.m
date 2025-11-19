@interface CNiOSAddressBook
+ (void)initialize;
+ (void)newAddressBookWithDelegateInfo:(id)a3;
+ (void)newAddressBookWithURL:(id)a3;
+ (void)newInMemoryAddressBook;
- (CNiOSAddressBook)init;
- (CNiOSAddressBook)initWithAddressBookProvider:(id)a3;
- (CNiOSAddressBook)initWithContactsEnvironment:(id)a3;
- (id)performAsynchronousWorkWithInvalidatedAddressBook:(id)a3;
- (id)performSynchronousWorkWithInvalidatedAddressBook:(id)a3;
- (id)resultWithInvalidatedAddressBook:(id)a3;
- (void)flushPool;
- (void)popAddressBook;
- (void)preparedAddressBook:(void *)a3;
- (void)pushAddressBook:(void *)a3;
@end

@implementation CNiOSAddressBook

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CNiOSAddressBook;
  objc_msgSendSuper2(&v2, sel_initialize);
  ABInitialize();
}

- (void)popAddressBook
{
  v3 = [(CNiOSAddressBook *)self addressBookPool];
  v4 = [v3 anyObject];
  if (!v4 || (v5 = CFRetain(v4)) == 0)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = CFAutorelease(v5);

  if (v6)
  {
    v3 = [(CNiOSAddressBook *)self addressBookPool];
    [v3 removeObject:v6];
LABEL_6:
  }

  return v6;
}

- (void)flushPool
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__29;
  v12[4] = __Block_byref_object_dispose__29;
  v13 = 0;
  v3 = [(CNiOSAddressBook *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CNiOSAddressBook_flushPool__block_invoke;
  block[3] = &unk_1E7412358;
  block[4] = self;
  block[5] = v12;
  dispatch_sync(v3, block);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v4 = 51;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = [(CNiOSAddressBook *)self accessQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__CNiOSAddressBook_flushPool__block_invoke_2;
    v6[3] = &unk_1E7412358;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v5, v6);

    if (*(v8 + 24) == 1)
    {
      usleep(0x3E8u);
    }
  }

  while ((v8[3] & 1) != 0);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v12, 8);
}

void __29__CNiOSAddressBook_flushPool__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addressBookPool];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) addressBookPool];
  [v6 removeAllObjects];
}

+ (void)newInMemoryAddressBook
{
  v2 = ABAddressBookCreateWithDatabaseDirectory();
  if (!v2)
  {
    NSLog(&cfstr_FailedToCreate.isa);
  }

  ABAddressBookSetUsedByContacts();
  return v2;
}

+ (void)newAddressBookWithURL:(id)a3
{
  error = 0;
  v3 = [a3 path];
  v4 = [v3 stringByAppendingString:@"/"];

  if ([v4 length])
  {
    v5 = ABAddressBookCreateWithDatabaseDirectory();
  }

  else
  {
    v5 = ABAddressBookCreateWithOptions(0, &error);
  }

  v6 = v5;
  if (!v5)
  {
    NSLog(&cfstr_FailedToCreate_0.isa, error);
  }

  ABAddressBookSetUsedByContacts();

  return v6;
}

+ (void)newAddressBookWithDelegateInfo:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 altDSID];
  v4 = v3;
  if (v3)
  {
    v9 = *MEMORY[0x1E698A140];
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  error = 0;
  v6 = ABAddressBookCreateWithOptions(v5, &error);
  if (!v6)
  {
    NSLog(&cfstr_FailedToCreate_0.isa, error);
  }

  ABAddressBookSetUsedByContacts();

  return v6;
}

- (CNiOSAddressBook)init
{
  v3 = +[CNContactsEnvironment currentEnvironment];
  v4 = [(CNiOSAddressBook *)self initWithContactsEnvironment:v3];

  return v4;
}

- (CNiOSAddressBook)initWithContactsEnvironment:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v4 useInMemoryStores])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__CNiOSAddressBook_initWithContactsEnvironment___block_invoke;
    aBlock[3] = &__block_descriptor_40_e6__v8__0lu32l8;
    aBlock[4] = v5;
    v6 = _Block_copy(aBlock);
  }

  else
  {
    v7 = [v4 delegateInfos];

    if (v7)
    {
      v8 = [v4 delegateInfos];
      v9 = [v8 firstObject];

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __48__CNiOSAddressBook_initWithContactsEnvironment___block_invoke_2;
      v18[3] = &unk_1E7416E10;
      v19 = v9;
      v20 = v5;
      v10 = v9;
      v6 = _Block_copy(v18);
      v11 = v19;
    }

    else
    {
      v12 = [v4 baseURL];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__CNiOSAddressBook_initWithContactsEnvironment___block_invoke_3;
      v15[3] = &unk_1E7416E10;
      v16 = v12;
      v17 = v5;
      v10 = v12;
      v6 = _Block_copy(v15);
      v11 = v16;
    }
  }

  v13 = [(CNiOSAddressBook *)self initWithAddressBookProvider:v6];

  return v13;
}

CFTypeRef __48__CNiOSAddressBook_initWithContactsEnvironment___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) newInMemoryAddressBook];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

CFTypeRef __48__CNiOSAddressBook_initWithContactsEnvironment___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 40) newAddressBookWithDelegateInfo:*(a1 + 32)];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

CFTypeRef __48__CNiOSAddressBook_initWithContactsEnvironment___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 40) newAddressBookWithURL:*(a1 + 32)];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (CNiOSAddressBook)initWithAddressBookProvider:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CNiOSAddressBook;
  v5 = [(CNiOSAddressBook *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v9 = dispatch_queue_create("com.apple.contacts.CNiOSAddressBook", v8);
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    v11 = [v4 copy];
    v12 = *(v5 + 4);
    *(v5 + 4) = v11;

    v13 = dispatch_get_global_queue(25, 0);
    v14 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, v13);
    v15 = *(v5 + 5);
    *(v5 + 5) = v14;

    objc_initWeak(&location, v5);
    v16 = *(v5 + 5);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48__CNiOSAddressBook_initWithAddressBookProvider___block_invoke;
    v19[3] = &unk_1E7416E38;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v16, v19);
    dispatch_resume(*(v5 + 5));
    v17 = v5;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __48__CNiOSAddressBook_initWithAddressBookProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained flushPool];
}

- (void)pushAddressBook:(void *)a3
{
  if (a3)
  {
    v5 = [(CNiOSAddressBook *)self addressBookPool];
    v6 = [v5 count];

    if (v6 <= 1)
    {
      MEMORY[0x19A8B3F90](a3);
      v7 = [(CNiOSAddressBook *)self addressBookPool];
      [v7 addObject:a3];
    }
  }
}

- (void)preparedAddressBook:(void *)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = [(CNiOSAddressBook *)self accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__CNiOSAddressBook_preparedAddressBook___block_invoke;
    block[3] = &unk_1E7412A88;
    block[4] = self;
    dispatch_sync(v5, block);

    v6 = [(CNiOSAddressBook *)self addressBookProvider];
    v3 = v6[2]();

    v7 = [(CNiOSAddressBook *)self accessQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__CNiOSAddressBook_preparedAddressBook___block_invoke_2;
    v9[3] = &unk_1E7412A88;
    v9[4] = self;
    dispatch_sync(v7, v9);
  }

  return v3;
}

- (id)resultWithInvalidatedAddressBook:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__29;
  v22 = __Block_byref_object_dispose__29;
  v23 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __53__CNiOSAddressBook_resultWithInvalidatedAddressBook___block_invoke;
  v15 = &unk_1E7416E60;
  v17 = &v18;
  v5 = v4;
  v16 = v5;
  v6 = [(CNiOSAddressBook *)self performSynchronousWorkWithInvalidatedAddressBook:&v12];
  v7 = MEMORY[0x1E6996810];
  v8 = v19[5];
  v9 = [v6 error];
  v10 = [v7 resultWithValue:v8 orError:v9];

  _Block_object_dispose(&v18, 8);

  return v10;
}

uint64_t __53__CNiOSAddressBook_resultWithInvalidatedAddressBook___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)performSynchronousWorkWithInvalidatedAddressBook:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CNiOSAddressBook_performSynchronousWorkWithInvalidatedAddressBook___block_invoke;
  v8[3] = &unk_1E7416E88;
  v9 = v4;
  v5 = v4;
  v6 = [(CNiOSAddressBook *)self performAsynchronousWorkWithInvalidatedAddressBook:v8];

  return v6;
}

void __69__CNiOSAddressBook_performSynchronousWorkWithInvalidatedAddressBook___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v5(v4, a2);
  v6[2]();
}

- (id)performAsynchronousWorkWithInvalidatedAddressBook:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(CNiOSAddressBook *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CNiOSAddressBook_performAsynchronousWorkWithInvalidatedAddressBook___block_invoke;
  block[3] = &unk_1E7412358;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(v5, block);

  v6 = [(CNiOSAddressBook *)self preparedAddressBook:v14[3]];
  v14[3] = v6;
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CNiOSAddressBook_performAsynchronousWorkWithInvalidatedAddressBook___block_invoke_2;
    v11[3] = &unk_1E7416EB0;
    v11[4] = self;
    v11[5] = &v13;
    v4[2](v4, v6, v11);
    v7 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E118]];
  }

  else
  {
    v8 = MEMORY[0x1E6996810];
    v9 = [CNErrorFactory errorWithCode:100];
    v7 = [v8 failureWithError:v9];
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __70__CNiOSAddressBook_performAsynchronousWorkWithInvalidatedAddressBook___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) popAddressBook];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __70__CNiOSAddressBook_performAsynchronousWorkWithInvalidatedAddressBook___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) accessQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CNiOSAddressBook_performAsynchronousWorkWithInvalidatedAddressBook___block_invoke_3;
  v3[3] = &unk_1E7416EB0;
  v4 = *(a1 + 32);
  dispatch_sync(v2, v3);
}

@end