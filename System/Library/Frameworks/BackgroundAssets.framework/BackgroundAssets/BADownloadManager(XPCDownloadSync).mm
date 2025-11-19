@interface BADownloadManager(XPCDownloadSync)
@end

@implementation BADownloadManager(XPCDownloadSync)

- (void)syncDownloads:()XPCDownloadSync .cold.1(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    Property = 0;
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    Property = objc_getProperty(v5, v6, v7, v8);
  }

  v10 = Property;
  [a3 uniqueIdentifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_9() setObject:a3 forKey:v3];
}

@end