@interface AVTDisabledMirroringHandler
- (void)exportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6;
- (void)importChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6;
- (void)resetZoneWithManagedObjectContext:(id)a3 completionHandler:(id)a4;
- (void)scheduleExportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6;
- (void)scheduleImportChangesWithManagedObjectContext:(id)a3 workQueue:(id)a4 completionHandler:(id)a5;
@end

@implementation AVTDisabledMirroringHandler

- (void)scheduleImportChangesWithManagedObjectContext:(id)a3 workQueue:(id)a4 completionHandler:(id)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA470];
  v12[0] = @"Disabled mirroring handler!";
  v6 = MEMORY[0x277CBEAC0];
  v7 = a5;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [AVTError errorWithCode:999 userInfo:v8];
  (*(a5 + 2))(v7, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)scheduleExportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = @"Disabled mirroring handler!";
  v7 = MEMORY[0x277CBEAC0];
  v8 = a6;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [AVTError errorWithCode:999 userInfo:v9];
  (*(a6 + 2))(v8, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)importChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = @"Disabled mirroring handler!";
  v7 = MEMORY[0x277CBEAC0];
  v8 = a6;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [AVTError errorWithCode:999 userInfo:v9];
  (*(a6 + 2))(v8, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)exportChangesWithManagedObjectContext:(id)a3 discretionary:(BOOL)a4 workQueue:(id)a5 completionHandler:(id)a6
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = @"Disabled mirroring handler!";
  v7 = MEMORY[0x277CBEAC0];
  v8 = a6;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [AVTError errorWithCode:999 userInfo:v9];
  (*(a6 + 2))(v8, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetZoneWithManagedObjectContext:(id)a3 completionHandler:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA470];
  v11[0] = @"Disabled mirroring handler!";
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [AVTError errorWithCode:999 userInfo:v7];
  (*(a4 + 2))(v6, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

@end