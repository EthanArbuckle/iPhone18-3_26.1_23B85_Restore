@interface AVTAvatarManagedRecordTransformer
- (id)managedRecordIdentifierForIdentifier:(id)a3;
- (id)recordWithManagedRecord:(id)a3 error:(id *)a4;
- (void)updateManagedRecord:(id)a3 withRecord:(id)a4;
@end

@implementation AVTAvatarManagedRecordTransformer

- (id)managedRecordIdentifierForIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  return v5;
}

- (void)updateManagedRecord:(id)a3 withRecord:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 identifier];
  v9 = [(AVTAvatarManagedRecordTransformer *)self managedRecordIdentifierForIdentifier:v8];
  [v7 setIdentifier:v9];

  v10 = [v6 avatarData];
  [v7 setAvatarData:v10];

  v11 = [v6 orderDate];

  [v7 setOrderDate:v11];
}

- (id)recordWithManagedRecord:(id)a3 error:(id *)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!a4)
    {
      v16 = 0;
      goto LABEL_14;
    }

    v26[0] = *MEMORY[0x277CCA470];
    v26[1] = @"InvalidClass";
    v27[0] = @"Record identifier is not of type NSUUID";
    v17 = MEMORY[0x277CCACA8];
    v10 = [v6 identifier];
    v18 = [objc_opt_class() description];
    v19 = [v17 stringWithFormat:@"%@", v18];
    v27[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    *a4 = [AVTError errorWithCode:703 userInfo:v20];

    goto LABEL_12;
  }

  v9 = [v6 identifier];
  v10 = [(AVTAvatarManagedRecordTransformer *)self identifierForManagedRecordIdentifier:v9];

  if (!v10)
  {
    if (a4)
    {
      v24 = *MEMORY[0x277CCA470];
      v25 = @"Record has a nil identifier";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *a4 = [AVTError errorWithCode:701 userInfo:v21];
    }

    goto LABEL_12;
  }

  v11 = [v6 avatarData];
  v12 = [AVTAvatarRecord canLoadAvatarWithData:v11];

  if (!v12)
  {
    if (a4)
    {
      [AVTError errorWithCode:702 userInfo:0];
      *a4 = v16 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v13 = [AVTAvatarRecord alloc];
  v14 = [v6 avatarData];
  v15 = [v6 orderDate];
  v16 = [(AVTAvatarRecord *)v13 initWithAvatarData:v14 identifier:v10 orderDate:v15];

LABEL_13:
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

@end