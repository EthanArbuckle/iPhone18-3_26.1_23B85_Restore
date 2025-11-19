@interface UISearchDisplayControllerContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityObscuredScreenAllowsView:(id)a3;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation UISearchDisplayControllerContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v29 = *MEMORY[0x29EDCA608];
  v26[2] = self;
  v26[1] = a2;
  v18 = [(UISearchDisplayControllerContainerViewAccessibility *)self superview];
  v26[0] = [v18 subviews];
  MEMORY[0x29EDC9740](v18);
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v26[0]);
  v20 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v20)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v20;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v25)
        {
          v2 = [MEMORY[0x29EDB8DE8] arrayWithObject:v24];
          v3 = v25;
          v25 = v2;
          MEMORY[0x29EDC9740](v3);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          location = [v24 subviews];
          memset(v21, 0, 0x40uLL);
          v12 = MEMORY[0x29EDC9748](location);
          v13 = [v12 countByEnumeratingWithState:v21 objects:v27 count:16];
          if (v13)
          {
            v9 = *v21[2];
            v10 = 0;
            v11 = v13;
            while (1)
            {
              v8 = v10;
              if (*v21[2] != v9)
              {
                objc_enumerationMutation(v12);
              }

              v21[8] = *(v21[1] + 8 * v10);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && !v25)
              {
                v4 = [MEMORY[0x29EDB8DE8] arrayWithObject:v24];
                v5 = v25;
                v25 = v4;
                MEMORY[0x29EDC9740](v5);
              }

              ++v10;
              if (v8 + 1 >= v11)
              {
                v10 = 0;
                v11 = [v12 countByEnumeratingWithState:v21 objects:v27 count:16];
                if (!v11)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x29EDC9740](v12);
          objc_storeStrong(&location, 0);
        }
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v7 = MEMORY[0x29EDC9748](v25);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v26, 0);

  return v7;
}

- (BOOL)_accessibilityObscuredScreenAllowsView:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] _accessibilityAncestorIsKindOf:objc_opt_class()];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v6.receiver = v9;
    v6.super_class = UISearchDisplayControllerContainerViewAccessibility;
    v10 = [(UISearchDisplayControllerContainerViewAccessibility *)&v6 _accessibilityObscuredScreenAllowsView:location[0], v3];
  }

  v7 = 1;
  objc_storeStrong(location, 0);
  return v10 & 1;
}

@end