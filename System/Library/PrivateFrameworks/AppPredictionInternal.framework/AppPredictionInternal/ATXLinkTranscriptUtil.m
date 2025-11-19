@interface ATXLinkTranscriptUtil
+ (id)systemLinkTranscriptPublisherFromDate:(id)a3 toDate:(id)a4 error:(id *)a5;
@end

@implementation ATXLinkTranscriptUtil

+ (id)systemLinkTranscriptPublisherFromDate:(id)a3 toDate:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D23CC0];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = [v10 transcriptPublisherWithStreamName:@"System" fromDate:v9 toDate:v8 maxEvents:0 reversed:0 error:a5];

  return v11;
}

@end