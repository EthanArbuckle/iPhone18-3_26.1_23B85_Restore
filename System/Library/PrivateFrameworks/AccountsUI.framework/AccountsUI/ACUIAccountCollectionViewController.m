@interface ACUIAccountCollectionViewController
- (id)specifiers;
- (void)removeContiguousSpecifiers:(id)a3 animated:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ACUIAccountCollectionViewController

- (void)viewWillAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v4 = [(ACUIAccountCollectionViewController *)self specifier];
  location = [v4 propertyForKey:@"ACUIAccountCollectionTitle"];
  MEMORY[0x277D82BD8](v4);
  if (location)
  {
    v3 = [(ACUIAccountCollectionViewController *)v9 navigationItem];
    [v3 setTitle:location];
    MEMORY[0x277D82BD8](v3);
  }

  v5.receiver = v9;
  v5.super_class = ACUIAccountCollectionViewController;
  [(ACUIAccountCollectionViewController *)&v5 viewWillAppear:v7];
  objc_storeStrong(&location, 0);
}

- (id)specifiers
{
  v7 = self;
  v6[1] = a2;
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v6[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [(ACUIAccountCollectionViewController *)v7 specifier];
    location = [v4 propertyForKey:@"ACUIAccountCollectionSpecifiers"];
    MEMORY[0x277D82BD8](v4);
    if (location)
    {
      [v6[0] addObjectsFromArray:location];
    }

    objc_storeStrong((&v7->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v6[0]);
    objc_storeStrong(&location, 0);
    objc_storeStrong(v6, 0);
  }

  v2 = *(&v7->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v2;
}

- (void)removeContiguousSpecifiers:(id)a3 animated:(BOOL)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  v17.receiver = v20;
  v17.super_class = ACUIAccountCollectionViewController;
  [(ACUIAccountCollectionViewController *)&v17 removeContiguousSpecifiers:location[0] animated:a4];
  v16 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIAccountCollectionViewController *)v20 specifiers];
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
    v6 = [(ACUIAccountCollectionViewController *)v20 navigationController];
    WeakRetained = objc_loadWeakRetained((&v20->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    v4 = [v6 popToViewController:? animated:?];
    MEMORY[0x277D82BD8](WeakRetained);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end