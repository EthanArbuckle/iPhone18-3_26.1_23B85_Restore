@interface ACUIAccountCollectionViewController
- (id)specifiers;
- (void)removeContiguousSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ACUIAccountCollectionViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  specifier = [(ACUIAccountCollectionViewController *)self specifier];
  location = [specifier propertyForKey:@"ACUIAccountCollectionTitle"];
  MEMORY[0x277D82BD8](specifier);
  if (location)
  {
    navigationItem = [(ACUIAccountCollectionViewController *)selfCopy navigationItem];
    [navigationItem setTitle:location];
    MEMORY[0x277D82BD8](navigationItem);
  }

  v5.receiver = selfCopy;
  v5.super_class = ACUIAccountCollectionViewController;
  [(ACUIAccountCollectionViewController *)&v5 viewWillAppear:appearCopy];
  objc_storeStrong(&location, 0);
}

- (id)specifiers
{
  selfCopy = self;
  v6[1] = a2;
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v6[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    specifier = [(ACUIAccountCollectionViewController *)selfCopy specifier];
    location = [specifier propertyForKey:@"ACUIAccountCollectionSpecifiers"];
    MEMORY[0x277D82BD8](specifier);
    if (location)
    {
      [v6[0] addObjectsFromArray:location];
    }

    objc_storeStrong((&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v6[0]);
    objc_storeStrong(&location, 0);
    objc_storeStrong(v6, 0);
  }

  v2 = *(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v2;
}

- (void)removeContiguousSpecifiers:(id)specifiers animated:(BOOL)animated
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifiers);
  animatedCopy = animated;
  v17.receiver = selfCopy;
  v17.super_class = ACUIAccountCollectionViewController;
  [(ACUIAccountCollectionViewController *)&v17 removeContiguousSpecifiers:location[0] animated:animated];
  v16 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIAccountCollectionViewController *)selfCopy specifiers];
  v13 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      if (*(v15 + *MEMORY[0x277D3FC90]))
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v16 = 1;
  }

LABEL_9:
  MEMORY[0x277D82BD8](obj);
  if ((v16 & 1) == 0)
  {
    navigationController = [(ACUIAccountCollectionViewController *)selfCopy navigationController];
    WeakRetained = objc_loadWeakRetained((&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    v4 = [navigationController popToViewController:? animated:?];
    MEMORY[0x277D82BD8](WeakRetained);
    MEMORY[0x277D82BD8](navigationController);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end