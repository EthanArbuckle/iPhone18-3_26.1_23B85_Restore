@interface ATXAppDirectoryCategory
+ (BOOL)isCategory:(unint64_t)category descendantOfCategory:(unint64_t)ofCategory;
+ (BOOL)shouldCategoryNeverMergeWithParent:(unint64_t)parent;
+ (id)categoryIdentifierForScreenTimeCategoryID:(unint64_t)d;
+ (id)localizedStringForCategoryID:(unint64_t)d;
+ (id)localizedStringForNonScreenTimeCategoryID:(unint64_t)d;
+ (unint64_t)_parentCategoryForiTunesGenreID:(unint64_t)d;
+ (unint64_t)appDirectoryCategoryStringToAppDirectoryCategoryID:(id)d;
+ (unint64_t)parentCategoryForCategory:(unint64_t)category;
+ (unint64_t)screenTimeCategoryIDForCategoryIdentifier:(id)identifier;
- (ATXAppDirectoryCategory)initWithCategoryID:(unint64_t)d appBundleIDs:(id)ds localizedName:(id)name;
- (ATXAppDirectoryCategory)initWithCategoryID:(unint64_t)d appIdentitites:(id)identitites localizedName:(id)name;
- (ATXAppDirectoryCategory)initWithCoder:(id)coder;
- (NSArray)appBundleIDs;
- (id)description;
- (id)localizedStringForCategoryID:(unint64_t)d;
- (void)encodeWithCoder:(id)coder;
- (void)updateAppBundleIDs:(id)ds;
- (void)updateCategoryLocalizedNameWithName:(id)name;
@end

@implementation ATXAppDirectoryCategory

- (NSArray)appBundleIDs
{
  appIdentities = [(ATXAppDirectoryCategory *)self appIdentities];
  bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];

  return bundleIDsFromIdentities;
}

- (ATXAppDirectoryCategory)initWithCategoryID:(unint64_t)d appBundleIDs:(id)ds localizedName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  nameCopy = name;
  v10 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = [ATXAppIdentity alloc];
        v18 = [(ATXAppIdentity *)v17 initWithBundleIdentifier:v16, v21];
        [v10 addObject:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = [(ATXAppDirectoryCategory *)self initWithCategoryID:d appIdentitites:v10 localizedName:nameCopy];
  return v19;
}

- (ATXAppDirectoryCategory)initWithCategoryID:(unint64_t)d appIdentitites:(id)identitites localizedName:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  identititesCopy = identitites;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = ATXAppDirectoryCategory;
  v11 = [(ATXAppDirectoryCategory *)&v32 init];
  v12 = v11;
  if (v11)
  {
    v27 = a2;
    v11->_categoryID = d;
    v13 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = identititesCopy;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          bundleIdentifier = [v19 bundleIdentifier];

          if (!bundleIdentifier)
          {
            [ATXAppDirectoryCategory initWithCategoryID:v27 appIdentitites:v12 localizedName:?];
          }

          bundleIdentifier2 = [v19 bundleIdentifier];
          [v13 addObject:bundleIdentifier2];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

    v22 = [v14 copy];
    appIdentities = v12->_appIdentities;
    v12->_appIdentities = v22;

    v24 = [nameCopy copy];
    localizedName = v12->_localizedName;
    v12->_localizedName = v24;
  }

  return v12;
}

- (id)description
{
  localizedName = self->_localizedName;
  if (!localizedName)
  {
    localizedName = &stru_1F3E050C8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu %@: %@", self->_categoryID, localizedName, self->_appIdentities];
}

- (ATXAppDirectoryCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"appBundleIDs"];
  v9 = [coderCopy decodeIntegerForKey:@"categoryID"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"appIdentities"];

  appIdentitiesFromBundleIDs = [v8 appIdentitiesFromBundleIDs];
  if (![v13 count] && objc_msgSend(appIdentitiesFromBundleIDs, "count"))
  {
    v15 = appIdentitiesFromBundleIDs;

    v13 = v15;
  }

  if (v13 || ([coderCopy error], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    self = [(ATXAppDirectoryCategory *)self initWithCategoryID:v9 appIdentitites:v13 localizedName:v16];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  categoryID = self->_categoryID;
  coderCopy = coder;
  [coderCopy encodeInteger:categoryID forKey:@"categoryID"];
  [coderCopy encodeObject:self->_appIdentities forKey:@"appIdentities"];
  [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
}

+ (id)categoryIdentifierForScreenTimeCategoryID:(unint64_t)d
{
  if (d - 1000 >= 0xD)
  {
    v5 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppDirectoryCategory *)d categoryIdentifierForScreenTimeCategoryID:v5];
    }

    v3 = MEMORY[0x1E6993B00];
  }

  else
  {
    v3 = qword_1E80C0A20[d - 1000];
  }

  v6 = *v3;

  return v6;
}

+ (unint64_t)screenTimeCategoryIDForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x1E6993AF0]])
  {
    v4 = 1000;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6993B20]])
  {
    v4 = 1001;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6993AE8]])
  {
    v4 = 1002;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6993AD8]])
  {
    v4 = 1003;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6993B08]])
  {
    v4 = 1004;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6993AE0]])
  {
    v4 = 1005;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6993B10]])
  {
    v4 = 1006;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6993AF8]])
  {
    v4 = 1007;
  }

  else
  {
    if (([identifierCopy isEqualToString:*MEMORY[0x1E6993B00]] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E6993B30]) & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E6993B40]) & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E6993B48]) & 1) == 0)
    {
      if ([identifierCopy isEqualToString:*MEMORY[0x1E6993B60]])
      {
        v4 = 1010;
        goto LABEL_22;
      }

      if ([identifierCopy isEqualToString:*MEMORY[0x1E6993B18]])
      {
        v4 = 1011;
        goto LABEL_22;
      }

      if ([identifierCopy isEqualToString:*MEMORY[0x1E6993B58]])
      {
        v4 = 1012;
        goto LABEL_22;
      }

      v6 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXAppDirectoryCategory *)identifierCopy screenTimeCategoryIDForCategoryIdentifier:v6];
      }
    }

    v4 = 1008;
  }

LABEL_22:

  return v4;
}

+ (unint64_t)appDirectoryCategoryStringToAppDirectoryCategoryID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesBusiness"])
  {
    v4 = 6000;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesWeather"])
  {
    v4 = 6001;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesUtilities"])
  {
    v4 = 6002;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesTravel"])
  {
    v4 = 6003;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesSports"])
  {
    v4 = 6004;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesSocialNetworking"])
  {
    v4 = 6005;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesReference"])
  {
    v4 = 6006;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesProductivity"])
  {
    v4 = 6007;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesPhotoVideo"])
  {
    v4 = 6008;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesNews"])
  {
    v4 = 6009;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesNavigation"])
  {
    v4 = 6010;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesMusic"])
  {
    v4 = 6011;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesLifestyle"])
  {
    v4 = 6012;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesHealthFitness"])
  {
    v4 = 6013;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesGames"])
  {
    v4 = 6014;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesFinance"])
  {
    v4 = 6015;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesEntertainment"])
  {
    v4 = 6016;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesEducation"])
  {
    v4 = 6017;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesBooks"])
  {
    v4 = 6018;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesMedical"])
  {
    v4 = 6020;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesNewsstand"])
  {
    v4 = 6021;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesCatalogs"])
  {
    v4 = 6022;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesFoodDrinks"])
  {
    v4 = 6023;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesShopping"])
  {
    v4 = 6024;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesStickers"])
  {
    v4 = 6025;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesDeveloperTools"])
  {
    v4 = 6026;
  }

  else if ([dCopy isEqualToString:@"ATXAppDirectoryCategoryIDiTunesGraphicsDesign"])
  {
    v4 = 6027;
  }

  else
  {
    v4 = 6028;
  }

  return v4;
}

- (id)localizedStringForCategoryID:(unint64_t)d
{
  if (self->_categoryID != d)
  {
    v5 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryCategory: localizedStringForCategoryID: CategoryID provided does not match categoryID of object", v9, 2u);
    }
  }

  if ([objc_opt_class() _instanceSpecificLocalizedStringExistsForCategory:d] && (localizedName = self->_localizedName) != 0)
  {
    v7 = localizedName;
  }

  else
  {
    v7 = [objc_opt_class() localizedStringForCategoryID:d];
  }

  return v7;
}

+ (id)localizedStringForCategoryID:(unint64_t)d
{
  if ([self isCategoryScreenTime:?])
  {
    v5 = MEMORY[0x1E6993BA0];
    v6 = [self categoryIdentifierForScreenTimeCategoryID:d];
    v7 = [v5 localizedNameForIdentifier:v6];
  }

  else
  {
    v7 = [self localizedStringForNonScreenTimeCategoryID:d];
  }

  return v7;
}

+ (id)localizedStringForNonScreenTimeCategoryID:(unint64_t)d
{
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (d <= 5)
  {
    if (d > 2)
    {
      if (d == 3)
      {
        v7 = @"Suggestions";
      }

      else if (d == 4)
      {
        v7 = @"Recently Added";
      }

      else
      {
        v7 = @"Bookmarks";
      }
    }

    else if (d)
    {
      if (d == 1)
      {
        v7 = @"Enterprise Apps";
      }

      else
      {
        if (d != 2)
        {
LABEL_19:
          v8 = __atxlog_handle_app_library();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            [ATXAppDirectoryCategory localizedStringForNonScreenTimeCategoryID:v8];
          }

          v9 = @"Unknown";
          goto LABEL_51;
        }

        v7 = @"Arcade";
      }
    }

    else
    {
      v7 = @" System";
    }
  }

  else
  {
    switch(d)
    {
      case 0x1770uLL:
        v7 = @"Business";
        break;
      case 0x1771uLL:
        v7 = @"Weather";
        break;
      case 0x1772uLL:
        v7 = @"Utilities";
        break;
      case 0x1773uLL:
        v7 = @"Travel";
        break;
      case 0x1774uLL:
        v7 = @"Sports";
        break;
      case 0x1775uLL:
        v10 = [self localizedStringForCategoryID:1001];
        goto LABEL_50;
      case 0x1776uLL:
        v7 = @"Reference";
        break;
      case 0x1777uLL:
        v7 = @"Productivity";
        break;
      case 0x1778uLL:
        v7 = @"Photo & Video";
        break;
      case 0x1779uLL:
        v7 = @"News";
        break;
      case 0x177AuLL:
        v7 = @"Navigation";
        break;
      case 0x177BuLL:
        v7 = @"Music";
        break;
      case 0x177CuLL:
        v7 = @"Lifestyle";
        break;
      case 0x177DuLL:
        v7 = @"Health & Fitness";
        break;
      case 0x177EuLL:
        v7 = @"Games";
        break;
      case 0x177FuLL:
        v7 = @"Finance";
        break;
      case 0x1780uLL:
        v7 = @"Entertainment";
        break;
      case 0x1781uLL:
        v7 = @"Education";
        break;
      case 0x1782uLL:
        v7 = @"Books";
        break;
      case 0x1783uLL:
        goto LABEL_19;
      case 0x1784uLL:
        v7 = @"Medical";
        break;
      case 0x1785uLL:
        v7 = @"Newsstand";
        break;
      case 0x1786uLL:
        v7 = @"Catalogs";
        break;
      case 0x1787uLL:
        v7 = @"Food & Drinks";
        break;
      case 0x1788uLL:
        v7 = @"Shopping";
        break;
      case 0x1789uLL:
        v7 = @"Stickers";
        break;
      case 0x178AuLL:
        v7 = @"Developer Tools";
        break;
      case 0x178BuLL:
        v7 = @"Graphics & Design";
        break;
      default:
        if (d == 6)
        {
          v7 = @"Managed Apps";
        }

        else
        {
          if (d != 7)
          {
            goto LABEL_19;
          }

          v7 = @"Hidden";
        }

        break;
    }
  }

  v10 = [v5 localizedStringForKey:v7 value:&stru_1F3E050C8 table:0];
LABEL_50:
  v9 = v10;
LABEL_51:

  return v9;
}

- (void)updateCategoryLocalizedNameWithName:(id)name
{
  v4 = [name copy];
  localizedName = self->_localizedName;
  self->_localizedName = v4;

  MEMORY[0x1EEE66BB8](v4, localizedName);
}

- (void)updateAppBundleIDs:(id)ds
{
  appIdentitiesFromBundleIDs = [ds appIdentitiesFromBundleIDs];
  appIdentities = self->_appIdentities;
  self->_appIdentities = appIdentitiesFromBundleIDs;

  MEMORY[0x1EEE66BB8](appIdentitiesFromBundleIDs, appIdentities);
}

+ (unint64_t)_parentCategoryForiTunesGenreID:(unint64_t)d
{
  v6 = d - 6000;
  if (d - 6000 < 0x1C && ((0xFF7FFFFu >> v6) & 1) != 0)
  {
    return qword_1BF6F5538[v6];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAppDirectoryCategory+Dynamic.m" lineNumber:74 description:{@"%s: categoryID %lu is not an iTunes genreID", "+[ATXAppDirectoryCategory(Dynamic) _parentCategoryForiTunesGenreID:]", d}];

  return 1008;
}

+ (BOOL)shouldCategoryNeverMergeWithParent:(unint64_t)parent
{
  result = 1;
  if (parent - 1000 <= 0xA)
  {
    if (((1 << (parent + 24)) & 0x41A) != 0)
    {
      return result;
    }

    if (parent == 1000)
    {
      return ([MEMORY[0x1E69C5CF8] isiPad] & 1) != 0;
    }
  }

  if (parent > 6 || ((1 << parent) & 0x46) == 0)
  {
    return 0;
  }

  return result;
}

+ (unint64_t)parentCategoryForCategory:(unint64_t)category
{
  if ([self isCategoryiTunesGamesSubgenre:?])
  {
    return 6014;
  }

  if (![self isCategoryiTunesGenre:category])
  {
    return 1008;
  }

  return [self _parentCategoryForiTunesGenreID:category];
}

+ (BOOL)isCategory:(unint64_t)category descendantOfCategory:(unint64_t)ofCategory
{
  result = category != 1008;
  if (category != ofCategory && category != 1008)
  {
    do
    {
      v7 = [self parentCategoryForCategory:?];
      result = v7 != 1008;
    }

    while (v7 != ofCategory && v7 != 1008);
  }

  return result;
}

- (void)initWithCategoryID:(uint64_t)a1 appIdentitites:(uint64_t)a2 localizedName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppDirectoryCategory.m" lineNumber:59 description:@"appIdentity.bundleIdentifier is nil"];
}

+ (void)categoryIdentifierForScreenTimeCategoryID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "+[ATXAppDirectoryCategory categoryIdentifierForScreenTimeCategoryID:]";
  v4 = 2048;
  v5 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%s: categoryID %lu is not a screentime categoryID", &v2, 0x16u);
}

+ (void)screenTimeCategoryIDForCategoryIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "+[ATXAppDirectoryCategory screenTimeCategoryIDForCategoryIdentifier:]";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%s: category identifier %@ is not a category identifier corresponding to a screentime categoryID", &v2, 0x16u);
}

@end