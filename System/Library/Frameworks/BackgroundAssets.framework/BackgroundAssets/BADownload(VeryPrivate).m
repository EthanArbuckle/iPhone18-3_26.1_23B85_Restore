@interface BADownload(VeryPrivate)
@end

@implementation BADownload(VeryPrivate)

- (void)cloneDownloadToFinalDestinationURL:()VeryPrivate error:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 applicationGroupIdentifier];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_236E28000, a2, OS_LOG_TYPE_ERROR, "Failed to load container for app group identifier: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end