@interface AVTDisabledMirroringHandler
- (void)exportChangesWithManagedObjectContext:(id)context discretionary:(BOOL)discretionary workQueue:(id)queue completionHandler:(id)handler;
- (void)importChangesWithManagedObjectContext:(id)context discretionary:(BOOL)discretionary workQueue:(id)queue completionHandler:(id)handler;
- (void)resetZoneWithManagedObjectContext:(id)context completionHandler:(id)handler;
- (void)scheduleExportChangesWithManagedObjectContext:(id)context discretionary:(BOOL)discretionary workQueue:(id)queue completionHandler:(id)handler;
- (void)scheduleImportChangesWithManagedObjectContext:(id)context workQueue:(id)queue completionHandler:(id)handler;
@end

@implementation AVTDisabledMirroringHandler

- (void)scheduleImportChangesWithManagedObjectContext:(id)context workQueue:(id)queue completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA470];
  v12[0] = @"Disabled mirroring handler!";
  v6 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [AVTError errorWithCode:999 userInfo:v8];
  (*(handler + 2))(handlerCopy, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)scheduleExportChangesWithManagedObjectContext:(id)context discretionary:(BOOL)discretionary workQueue:(id)queue completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = @"Disabled mirroring handler!";
  v7 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [AVTError errorWithCode:999 userInfo:v9];
  (*(handler + 2))(handlerCopy, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)importChangesWithManagedObjectContext:(id)context discretionary:(BOOL)discretionary workQueue:(id)queue completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = @"Disabled mirroring handler!";
  v7 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [AVTError errorWithCode:999 userInfo:v9];
  (*(handler + 2))(handlerCopy, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)exportChangesWithManagedObjectContext:(id)context discretionary:(BOOL)discretionary workQueue:(id)queue completionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = @"Disabled mirroring handler!";
  v7 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [AVTError errorWithCode:999 userInfo:v9];
  (*(handler + 2))(handlerCopy, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetZoneWithManagedObjectContext:(id)context completionHandler:(id)handler
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA470];
  v11[0] = @"Disabled mirroring handler!";
  v5 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [AVTError errorWithCode:999 userInfo:v7];
  (*(handler + 2))(handlerCopy, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

@end