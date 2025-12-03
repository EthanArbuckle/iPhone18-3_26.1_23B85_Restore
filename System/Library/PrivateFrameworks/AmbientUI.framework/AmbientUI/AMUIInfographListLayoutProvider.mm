@interface AMUIInfographListLayoutProvider
- (AMUIInfographListLayoutProvider)init;
- (AMUIInfographListLayoutProvider)initWithScreenType:(unint64_t)type;
- (id)layoutForIconLocation:(id)location;
- (void)configureRootFolderConfiguration:(id)configuration screenType:(unint64_t)type;
@end

@implementation AMUIInfographListLayoutProvider

- (AMUIInfographListLayoutProvider)init
{
  v3 = SBHScreenTypeForCurrentDevice();

  return [(AMUIInfographListLayoutProvider *)self initWithScreenType:v3];
}

- (AMUIInfographListLayoutProvider)initWithScreenType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = AMUIInfographListLayoutProvider;
  result = [(AMUIInfographListLayoutProvider *)&v5 init];
  if (result)
  {
    result->_screenType = type;
  }

  return result;
}

- (id)layoutForIconLocation:(id)location
{
  v4 = objc_alloc_init(MEMORY[0x277D66298]);
  [(AMUIInfographListLayoutProvider *)self configureRootFolderConfiguration:v4 screenType:self->_screenType];
  v5 = [[AMUIInfographIconListLayout alloc] initWithRootFolderVisualConfiguration:v4 screenType:self->_screenType];

  return v5;
}

- (void)configureRootFolderConfiguration:(id)configuration screenType:(unint64_t)type
{
  configurationCopy = configuration;
  v7 = configurationCopy;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
      v12 = 2.0;
      v13 = 3.0;
      goto LABEL_26;
    case 2uLL:
      v12 = 5.0;
      v13 = 6.0;
LABEL_26:
      [configurationCopy setEditModeButtonLayoutOffset:{v12, v13}];
      v14 = 50.0;
      v15 = 24.0;
      break;
    case 3uLL:
    case 6uLL:
    case 8uLL:
      goto LABEL_18;
    case 4uLL:
      v16 = 10.0;
      v19 = 10.0;
      goto LABEL_20;
    case 5uLL:
    case 7uLL:
      v16 = 28.0;
      goto LABEL_19;
    case 9uLL:
      [configurationCopy setEditModeButtonLayoutOffset:{14.0, 19.0}];
      v20 = 0x404D000000000000;
      goto LABEL_21;
    case 0xAuLL:
      [configurationCopy setEditModeButtonLayoutOffset:{10.0, 10.0}];
      v20 = 0x404A000000000000;
      goto LABEL_21;
    case 0xBuLL:
      v16 = 20.0;
      goto LABEL_11;
    case 0xCuLL:
      v16 = 13.0;
      goto LABEL_19;
    case 0xDuLL:
      v8 = 30.0;
      v9 = 20.0;
      goto LABEL_30;
    case 0xEuLL:
      v17 = 22.0;
      v18 = 20.0;
      goto LABEL_24;
    case 0xFuLL:
      [configurationCopy setEditModeButtonLayoutOffset:{25.0, 19.0}];
      v20 = 0x4050000000000000;
      goto LABEL_21;
    case 0x10uLL:
      v16 = 16.0;
LABEL_11:
      v19 = 18.0;
      goto LABEL_20;
    case 0x11uLL:
      v17 = 30.0;
      v18 = 18.0;
LABEL_24:
      [configurationCopy setEditModeButtonLayoutOffset:{v17, v18}];
      v14 = 66.0;
      goto LABEL_22;
    case 0x12uLL:
      v16 = 18.0;
      goto LABEL_19;
    case 0x13uLL:
      v10 = 42.0;
      v11 = 23.0;
      goto LABEL_34;
    case 0x14uLL:
      v10 = 28.0;
      v11 = 20.0;
      goto LABEL_34;
    case 0x15uLL:
    case 0x19uLL:
    case 0x1DuLL:
      v8 = 37.0;
      v9 = 16.0;
      goto LABEL_30;
    case 0x16uLL:
    case 0x1AuLL:
    case 0x1EuLL:
      v8 = 25.0;
      v9 = 10.0;
LABEL_30:
      [configurationCopy setEditModeButtonLayoutOffset:{v8, v9}];
      v14 = 66.0;
      goto LABEL_35;
    case 0x17uLL:
    case 0x1BuLL:
      v10 = 50.0;
      v11 = 16.0;
LABEL_34:
      [configurationCopy setEditModeButtonLayoutOffset:{v10, v11}];
      v14 = 68.0;
LABEL_35:
      v15 = 28.0;
      break;
    case 0x18uLL:
    case 0x1CuLL:
      [configurationCopy setEditModeButtonLayoutOffset:{40.0, 12.0}];
      v14 = 68.0;
      v15 = 27.0;
      break;
    default:
      v21 = AMUILogInfograph();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [AMUIInfographListLayoutProvider configureRootFolderConfiguration:v21 screenType:?];
      }

LABEL_18:
      v16 = 16.0;
LABEL_19:
      v19 = 16.0;
LABEL_20:
      [v7 setEditModeButtonLayoutOffset:{v16, v19}];
      v20 = 0x404E000000000000;
LABEL_21:
      v14 = *&v20;
LABEL_22:
      v15 = 26.0;
      break;
  }

  [v7 setEditModeButtonSize:{v14, v15}];
  [v7 setEditModeButtonContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
}

- (void)configureRootFolderConfiguration:(uint64_t)a1 screenType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = SBHStringForScreenType();
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Requesting root folder visual configuration for unexpected screen type: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end