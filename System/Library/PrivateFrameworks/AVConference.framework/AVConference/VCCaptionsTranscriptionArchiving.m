@interface VCCaptionsTranscriptionArchiving
+ (id)unarchivedTranscriptionFromData:(id)a3 error:(id *)a4;
@end

@implementation VCCaptionsTranscriptionArchiving

+ (id)unarchivedTranscriptionFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = MEMORY[0x1E696ACD0];

  return [v13 _strictlyUnarchivedObjectOfClasses:v12 fromData:a3 error:a4];
}

@end