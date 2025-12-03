@interface ATXLinkTranscriptUtil
+ (id)systemLinkTranscriptPublisherFromDate:(id)date toDate:(id)toDate error:(id *)error;
@end

@implementation ATXLinkTranscriptUtil

+ (id)systemLinkTranscriptPublisherFromDate:(id)date toDate:(id)toDate error:(id *)error
{
  v7 = MEMORY[0x277D23CC0];
  toDateCopy = toDate;
  dateCopy = date;
  v10 = objc_alloc_init(v7);
  v11 = [v10 transcriptPublisherWithStreamName:@"System" fromDate:dateCopy toDate:toDateCopy maxEvents:0 reversed:0 error:error];

  return v11;
}

@end