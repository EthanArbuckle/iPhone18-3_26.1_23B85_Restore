@interface _ATXAppLaunchHistogramManager
+ (BOOL)isHistogramDeprecated:(int64_t)a3;
+ (_ATXAppLaunchHistogramManager)sharedInstance;
+ (void)releaseTemporarySharedInstance;
+ (void)resetDataForCategoricalHistograms;
+ (void)resetDataForHistograms;
+ (void)resetSharedInstance;
+ (void)useTemporarySharedInstance:(id)a3;
- (id)categoricalHistogramForLaunchType:(int64_t)a3;
- (id)histogramForLaunchType:(int64_t)a3;
- (id)initAndPersist:(BOOL)a3;
- (int)getHistogramMaxCategoryCountFromAsset:(id)a3;
- (unint64_t)getHistogramPruningMethodFromAsset:(id)a3;
- (void)enumerateInMemoryCategoricalHistogramsWithBlock:(id)a3;
- (void)enumerateInMemoryHistogramsWithBlock:(id)a3;
- (void)exchangeDatastore:(id)a3;
- (void)purgeHistogramForLaunchType:(int64_t)a3;
@end

@implementation _ATXAppLaunchHistogramManager

+ (_ATXAppLaunchHistogramManager)sharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock);
  v2 = sharedInstance;
  if (!sharedInstance)
  {
    v3 = [[_ATXAppLaunchHistogramManager alloc] initWithPersistentStore];
    v4 = sharedInstance;
    sharedInstance = v3;

    v2 = sharedInstance;
  }

  v5 = v2;
  pthread_mutex_unlock(&sharedInstanceLock);

  return v5;
}

- (unint64_t)getHistogramPruningMethodFromAsset:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_ATXAppLaunchHistogramManager *)v4 getHistogramPruningMethodFromAsset:v8];
    }

    v7 = 1;
  }

  return v7;
}

- (int)getHistogramMaxCategoryCountFromAsset:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_ATXAppLaunchHistogramManager *)v4 getHistogramPruningMethodFromAsset:v8];
    }

    v7 = 50;
  }

  return v7;
}

- (id)initAndPersist:(BOOL)a3
{
  v3 = a3;
  v19.receiver = self;
  v19.super_class = _ATXAppLaunchHistogramManager;
  v4 = [(_ATXAppLaunchHistogramManager *)&v19 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("ATXBackgroundSaver", v6);
    backgroundSaverQueue = v4->_backgroundSaverQueue;
    v4->_backgroundSaverQueue = v7;

    v9 = objc_opt_new();
    histograms = v4->_histograms;
    v4->_histograms = v9;

    v11 = objc_opt_new();
    categoricalHistograms = v4->_categoricalHistograms;
    v4->_categoricalHistograms = v11;

    v4->_persistentStore = v3;
    if (v3)
    {
      v13 = +[_ATXDataStore sharedInstance];
      datastore = v4->_datastore;
      v4->_datastore = v13;
    }

    v15 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    parameters = v4->_parameters;
    v4->_parameters = v15;

    v4->_SSIDPruningMethod = [(_ATXAppLaunchHistogramManager *)v4 getHistogramPruningMethodFromAsset:@"SSIDPruningMethod"];
    v4->_maxSSIDCount = [(_ATXAppLaunchHistogramManager *)v4 getHistogramMaxCategoryCountFromAsset:@"MaxSSIDCount"];
    v4->_actionConfirmsRejectsPruningMethod = [(_ATXAppLaunchHistogramManager *)v4 getHistogramPruningMethodFromAsset:@"ActionsConfirmsRejectsPruningMethod"];
    v4->_maxActionConfirmsRejectsActionCount = [(_ATXAppLaunchHistogramManager *)v4 getHistogramMaxCategoryCountFromAsset:@"ActionsConfirmsRejectsMaxActionCount"];
    v4->_appJointContextPruningMethod = [(_ATXAppLaunchHistogramManager *)v4 getHistogramPruningMethodFromAsset:@"AppJointContextPruningMethod"];
    v4->_maxAppJointContextKeyCount = [(_ATXAppLaunchHistogramManager *)v4 getHistogramMaxCategoryCountFromAsset:@"AppJointContextMaxKeyCount"];
    v4->_maxAppSpecificLocationMaxKeyCount = [(_ATXAppLaunchHistogramManager *)v4 getHistogramMaxCategoryCountFromAsset:@"AppCoarseLocationMaxKeyCount"];
    v4->_maxAppCoarseLocationMaxKeyCount = [(_ATXAppLaunchHistogramManager *)v4 getHistogramMaxCategoryCountFromAsset:@"AppSpecificLocationMaxKeyCount"];
    v4->_maxAppZoom7GeoHashMaxKeyCount = [(_ATXAppLaunchHistogramManager *)v4 getHistogramMaxCategoryCountFromAsset:@"AppZoom7GeoHashMaxKeyCount"];
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogramManager initAndPersist:];
    }
  }

  return v4;
}

+ (void)resetSharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock);
  v2 = sharedInstance;
  sharedInstance = 0;

  pthread_mutex_unlock(&sharedInstanceLock);
}

+ (void)useTemporarySharedInstance:(id)a3
{
  v3 = a3;
  pthread_mutex_lock(&sharedInstanceLock);
  objc_storeStrong(&swappedInstance, sharedInstance);
  v4 = sharedInstance;
  sharedInstance = v3;

  pthread_mutex_unlock(&sharedInstanceLock);
}

+ (void)releaseTemporarySharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock);
  objc_storeStrong(&sharedInstance, swappedInstance);
  v2 = swappedInstance;
  swappedInstance = 0;

  pthread_mutex_unlock(&sharedInstanceLock);
}

- (void)exchangeDatastore:(id)a3
{
  v4 = a3;
  v5 = self->_histograms;
  objc_sync_enter(v5);
  datastore = self->_datastore;
  self->_datastore = v4;
  v7 = v4;

  objc_sync_exit(v5);
}

- (void)enumerateInMemoryHistogramsWithBlock:(id)a3
{
  v4 = a3;
  histograms = self->_histograms;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70___ATXAppLaunchHistogramManager_enumerateInMemoryHistogramsWithBlock___block_invoke;
  v7[3] = &unk_27859B1E8;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)histograms enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)enumerateInMemoryCategoricalHistogramsWithBlock:(id)a3
{
  v4 = a3;
  categoricalHistograms = self->_categoricalHistograms;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81___ATXAppLaunchHistogramManager_enumerateInMemoryCategoricalHistogramsWithBlock___block_invoke;
  v7[3] = &unk_27859B210;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)categoricalHistograms enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)histogramForLaunchType:(int64_t)a3
{
  v5 = self->_histograms;
  objc_sync_enter(v5);
  histograms = self->_histograms;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)histograms objectForKeyedSubscript:v7];

  if (!v8)
  {
    if (self->_persistentStore)
    {
      v8 = [[_ATXAppLaunchHistogramWithPersistentBackup alloc] initWithDataStore:self->_datastore histogramType:a3 saveOnBackgroundQueue:self->_backgroundSaverQueue];
      if (v8)
      {
LABEL_7:
        v10 = self->_histograms;
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
        [(NSMutableDictionary *)v10 setObject:v8 forKeyedSubscript:v11];

        goto LABEL_8;
      }

      v9 = [[_ATXAppLaunchHistogramWithPersistentBackup alloc] initWithDataStore:self->_datastore histogramType:a3 loadFromDataStore:0 saveOnBackgroundQueue:self->_backgroundSaverQueue];
    }

    else
    {
      v9 = [[_ATXAppLaunchHistogram alloc] initWithType:a3];
    }

    v8 = v9;
    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(v5);

  return v8;
}

- (id)categoricalHistogramForLaunchType:(int64_t)a3
{
  v5 = 0;
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 11:
    case 14:
    case 16:
    case 17:
    case 19:
    case 20:
    case 22:
    case 23:
    case 25:
    case 26:
    case 28:
    case 35:
    case 36:
    case 90:
    case 91:
    case 92:
    case 93:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 108:
    case 109:
    case 110:
    case 112:
    case 113:
      goto LABEL_56;
    case 4:
    case 29:
    case 31:
    case 104:
      maxSSIDCount = self->_maxSSIDCount;
      SSIDPruningMethod = self->_SSIDPruningMethod;
      goto LABEL_55;
    case 6:
    case 7:
    case 9:
    case 10:
    case 12:
    case 13:
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"Deprecated histogram type.";
      goto LABEL_11;
    case 8:
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_APRHistogramTypeAppIntentDonation is deprecated.";
      goto LABEL_11;
    case 15:
      v16 = __atxlog_handle_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_ATXHistogramTypeIntentForAllAppsLaunch is deprecated.";
      goto LABEL_11;
    case 18:
      v18 = __atxlog_handle_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_ATXHistogramTypeIntentForAllAppsDayOfWeek is deprecated.";
      goto LABEL_11;
    case 21:
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_ATXHistogramTypeIntentForAllAppsTrendingLaunch is deprecated.";
      goto LABEL_11;
    case 24:
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_ATXHistogramTypeIntentForAllAppsUnlockTime is deprecated.";
      goto LABEL_11;
    case 27:
      v17 = __atxlog_handle_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_ATXHistogramTypeIntentForAllAppsAirplaneModeLaunch is deprecated.";
      goto LABEL_11;
    case 30:
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_ATXHistogramTypeIntentForAllAppsWifiLaunch is deprecated.";
      goto LABEL_11;
    case 32:
      LOWORD(maxSSIDCount) = 8;
      goto LABEL_54;
    case 33:
    case 34:
      maxSSIDCount = self->_maxActionConfirmsRejectsActionCount;
      SSIDPruningMethod = self->_actionConfirmsRejectsPruningMethod;
      goto LABEL_55;
    case 37:
    case 38:
    case 39:
    case 105:
      LOWORD(maxSSIDCount) = 5;
      goto LABEL_54;
    case 40:
    case 106:
    case 111:
      LOWORD(maxSSIDCount) = 2;
      goto LABEL_54;
    case 41:
    case 107:
      LOWORD(maxSSIDCount) = 7;
      goto LABEL_54;
    case 42:
      LOWORD(maxSSIDCount) = 42;
      goto LABEL_54;
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 63:
    case 64:
    case 69:
    case 70:
    case 75:
    case 76:
    case 81:
    case 82:
    case 87:
    case 88:
    case 89:
      maxSSIDCount = self->_maxAppJointContextKeyCount;
      SSIDPruningMethod = self->_appJointContextPruningMethod;
      goto LABEL_55;
    case 49:
      LOWORD(maxSSIDCount) = 4;
      goto LABEL_7;
    case 50:
      maxSSIDCount = self->_maxAppSpecificLocationMaxKeyCount;
      goto LABEL_7;
    case 51:
      maxSSIDCount = self->_maxAppCoarseLocationMaxKeyCount;
      goto LABEL_7;
    case 52:
    case 53:
    case 54:
    case 65:
    case 71:
    case 77:
    case 83:
      LOWORD(maxSSIDCount) = 12;
      goto LABEL_7;
    case 55:
    case 56:
    case 66:
    case 72:
    case 78:
    case 84:
      LOWORD(maxSSIDCount) = 7;
      goto LABEL_7;
    case 57:
    case 58:
    case 67:
    case 73:
    case 79:
    case 85:
      LOWORD(maxSSIDCount) = 250;
      goto LABEL_7;
    case 59:
    case 60:
    case 68:
    case 74:
    case 80:
    case 86:
      LOWORD(maxSSIDCount) = 500;
      goto LABEL_7;
    case 61:
      maxSSIDCount = self->_maxAppZoom7GeoHashMaxKeyCount;
      goto LABEL_7;
    case 62:
      LOWORD(maxSSIDCount) = 8;
      goto LABEL_7;
    case 94:
      SSIDPruningMethod = 2;
      LOWORD(maxSSIDCount) = 2;
      goto LABEL_55;
    case 95:
      LOWORD(maxSSIDCount) = [(_ATXAppLaunchHistogramManager *)self getHistogramMaxCategoryCountFromAsset:@"PoiCategoryMaxCount"];
      goto LABEL_7;
    case 96:
      LOWORD(maxSSIDCount) = 3;
LABEL_54:
      SSIDPruningMethod = 1;
      goto LABEL_55;
    case 97:
      LOWORD(maxSSIDCount) = 6;
      goto LABEL_7;
    case 98:
      LOWORD(maxSSIDCount) = 1;
LABEL_7:
      SSIDPruningMethod = 2;
      goto LABEL_55;
    case 114:
      v15 = __atxlog_handle_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramManager categoricalHistogramForLaunchType:];
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE658];
      v11 = @"_ATXHistogramTypeMax is not meant to be instantiated.";
LABEL_11:
      [v9 raise:v10 format:v11];
      v5 = 0;
      goto LABEL_56;
    default:
      SSIDPruningMethod = 0;
      LOWORD(maxSSIDCount) = 0;
LABEL_55:
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __67___ATXAppLaunchHistogramManager_categoricalHistogramForLaunchType___block_invoke;
      v22[3] = &unk_27859B238;
      v22[4] = self;
      v22[5] = a3;
      v23 = maxSSIDCount;
      v22[6] = SSIDPruningMethod;
      v20 = _Block_copy(v22);
      v5 = ATXHistogramTypeFunctionLookup[a3]();

LABEL_56:

      return v5;
  }
}

- (void)purgeHistogramForLaunchType:(int64_t)a3
{
  obj = self->_histograms;
  objc_sync_enter(obj);
  histograms = self->_histograms;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)histograms objectForKeyedSubscript:v6];

  if (v7)
  {
    if ([v7 isMemberOfClass:objc_opt_class()])
    {
      [v7 flush];
    }

    v8 = self->_histograms;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];
  }

  objc_sync_exit(obj);
  obja = self->_categoricalHistograms;
  objc_sync_enter(obja);
  categoricalHistograms = self->_categoricalHistograms;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v12 = [(NSMutableDictionary *)categoricalHistograms objectForKeyedSubscript:v11];

  if (v12)
  {
    if ([v12 isMemberOfClass:objc_opt_class()])
    {
      [v12 flush];
    }

    v13 = self->_categoricalHistograms;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v13 removeObjectForKey:v14];
  }

  objc_sync_exit(obja);
}

+ (BOOL)isHistogramDeprecated:(int64_t)a3
{
  v3 = [_ATXDataStore stringForHistogramType:a3];
  v4 = [v3 hasSuffix:@"_Deprecated"];

  return v4;
}

+ (void)resetDataForHistograms
{
  for (i = 0; i != 114; ++i)
  {
    if (([objc_opt_class() isHistogramDeprecated:i] & 1) == 0)
    {
      v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
      v4 = [v3 categoricalHistogramForLaunchType:i];

      if (v4)
      {
        [v4 resetData];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 flush];
        }
      }

      else
      {
        v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
        v6 = [v5 histogramForLaunchType:i];

        if (v6)
        {
          [v6 resetData];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 flush];
          }
        }
      }
    }
  }
}

+ (void)resetDataForCategoricalHistograms
{
  for (i = 0; i != 114; ++i)
  {
    if (([objc_opt_class() isHistogramDeprecated:i] & 1) == 0)
    {
      v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
      v4 = [v3 categoricalHistogramForLaunchType:i];

      if (v4)
      {
        [v4 resetData];
      }
    }
  }
}

- (void)getHistogramPruningMethodFromAsset:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "No value found in asset for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end