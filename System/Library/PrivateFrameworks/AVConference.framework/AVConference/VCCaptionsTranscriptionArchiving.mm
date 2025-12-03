@interface VCCaptionsTranscriptionArchiving
+ (id)unarchivedTranscriptionFromData:(id)data error:(id *)error;
@end

@implementation VCCaptionsTranscriptionArchiving

+ (id)unarchivedTranscriptionFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = MEMORY[0x1E696ACD0];

  return [v13 _strictlyUnarchivedObjectOfClasses:v12 fromData:data error:error];
}

@end