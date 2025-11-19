void sub_1CD0(uint64_t a1)
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:*(a1 + 32)];
  [v3 openSensitiveURL:v2 withOptions:0];
}

void sub_2060(os_log_t log)
{
  v1 = 136315138;
  v2 = "[BRKSettingsViewController _handleRemindersFooterHyperlinkTapped]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s: unexpected condition for reminders footer hyperlink tap", &v1, 0xCu);
}

void sub_20E4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[BRKSettingsViewController _presentMeContactCard]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s: failed to look up Me contact card, cannot present contact view controller.", &v1, 0xCu);
}